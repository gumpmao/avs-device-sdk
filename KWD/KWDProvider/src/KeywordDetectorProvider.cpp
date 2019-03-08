/*
 * Copyright 2018 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *     http://aws.amazon.com/apache2.0/
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

#include "KWDProvider/KeywordDetectorProvider.h"

#ifdef KWD_KITTAI
#include <KittAi/KittAiKeyWordDetector.h>
#elif KWD_SENSORY
#include <Sensory/SensoryKeywordDetector.h>
#elif KWD_GPIO
#include <GPIO/GPIOKeyWordDetector.h>
#endif

#ifdef KWD_KITTAI
/// The sensitivity of the Kitt.ai engine.
static const double KITT_AI_SENSITIVITY = 0.6;

/// The audio amplifier level of the Kitt.ai engine.
static const float KITT_AI_AUDIO_GAIN = 2.0;

/// Whether Kitt.ai should apply front end audio processing.
static const bool KITT_AI_APPLY_FRONT_END_PROCESSING = true;
#endif

using namespace alexaClientSDK;
using namespace alexaClientSDK::kwd;

std::unique_ptr<kwd::AbstractKeywordDetector> KeywordDetectorProvider::create(
#ifdef TWO_STAGE_TRIGGER
			std::shared_ptr<sampleApp::PortAudioMicrophoneWrapper> micWrapper,
#endif
    std::shared_ptr<avsCommon::avs::AudioInputStream> stream,
    avsCommon::utils::AudioFormat audioFormat,
    std::unordered_set<std::shared_ptr<avsCommon::sdkInterfaces::KeyWordObserverInterface>> keyWordObservers,
    std::unordered_set<std::shared_ptr<avsCommon::sdkInterfaces::KeyWordDetectorStateObserverInterface>>
        keyWordDetectorStateObservers,
    const std::string& pathToInputFolder) {
#if defined(KWD_KITTAI)
    return alexaClientSDK::kwd::KittAiKeyWordDetector::create(
#ifdef TWO_STAGE_TRIGGER
		micWrapper,
#endif
        stream,
        audioFormat,
        keyWordObservers,
        keyWordDetectorStateObservers,
        pathToInputFolder + "/common.res",
        {{pathToInputFolder + "/alexa.umdl", "ALEXA", KITT_AI_SENSITIVITY}},
        KITT_AI_AUDIO_GAIN,
        KITT_AI_APPLY_FRONT_END_PROCESSING);

#elif defined(KWD_SENSORY)
    return kwd::SensoryKeywordDetector::create(
#ifdef TWO_STAGE_TRIGGER
		micWrapper,
#endif
        stream,
        audioFormat,
        keyWordObservers,
        keyWordDetectorStateObservers,
        pathToInputFolder + "/spot-alexa-rpi-31000.snsr");
#elif defined(KWD_GPIO)
    return kwd::GPIOKeyWordDetector::create(
        stream,
        audioFormat,
        keyWordObservers,
        keyWordDetectorStateObservers,
        std::chrono::milliseconds(10));
#else
    return nullptr;
#endif
}