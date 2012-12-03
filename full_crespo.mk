# Copyright (C) 2009 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#
# This file is the build configuration for a full Android
# build for crespo hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps).
#

# Get the long list of APNs
PRODUCT_COPY_FILES := device/sample/etc/apns-full-conf.xml:system/etc/apns-conf.xml

# Live Wallpapers
PRODUCT_PACKAGES += \
        LiveWallpapers \
        LiveWallpapersPicker \
        VisualizationWallpapers \
        librs_jni

# Add Gapps
PRODUCT_PACKAGES += \
	ChromeBookmarksSyncAdapter \
	GenieWidget \
	GoogleBackupTransport \
	GoogleCalendarSyncAdapter \
	GoogleEars \
	GoogleFeedback \
	GoogleLoginService \
	GooglePartnerSetup \
	GoogleServicesFramework \
	GoogleTTS \
	MediaUploader \
	Microbes \
	NetworkLocation \
	OneTimeInitializer \
	Phonesky \
	QuickSearchBox \
	SetupWizard \
	Talk \
	Talkback \
	Thinkfree \
	VoiceSearchStub

PRODUCT_COPY_FILES += \
	gapps/etc/permissions/com.google.android.maps.xml:system/etc/permissions/com.google.android.maps.xml \
	gapps/etc/permissions/com.google.android.media.effects.xml:system/etc/permissions/com.google.android.media.effects.xml \
	gapps/etc/permissions/com.google.widevine.software.drm.xml:system/etc/permissions/com.google.widevine.software.drm.xml \
	gapps/etc/permissions/features.xml:system/etc/permissions/features.xml \
	gapps/etc/g.prop:system/etc/g.prop \
	gapps/framework/com.google.android.maps.jar:system/framework/com.google.android.maps.jar \
	gapps/framework/com.google.android.media.effects.jar:system/framework/com.google.android.media.effects.jar \
	gapps/framework/com.google.widevine.software.drm.jar:system/framework/com.google.widevine.software.drm.jar \
	gapps/lib/libfilterpack_facedetect.so:system/lib/libfilterpack_facedetect.so \
	gapps/lib/libflint_engine_jni_api.so:system/lib/libflint_engine_jni_api.so \
	gapps/lib/libfrsdk.so:system/lib/libfrsdk.so \
	gapps/lib/libgcomm_jni.so:system/lib/libgcomm_jni.so \
	gapps/lib/libgoogle_recognizer_jni.so:system/lib/libgoogle_recognizer_jni.so \
	gapps/lib/libmicrobes_jni.so:system/lib/libmicrobes_jni.so \
	gapps/lib/libpatts_engine_jni_api.so:system/lib/libpatts_engine_jni_api.so \
	gapps/lib/libpicowrapper.so:system/lib/libpicowrapper.so \
	gapps/lib/libspeexwrapper.so:system/lib/libspeexwrapper.so \
	gapps/lib/libvideochat_jni.so:system/lib/libvideochat_jni.so \
	gapps/lib/libvideochat_stabilize.so:system/lib/libvideochat_stabilize.so \
	gapps/lib/libvoicesearch.so:system/lib/libvoicesearch.so \
	gapps/lib/libvorbisencoder.so:system/lib/libvorbisencoder.so \
	gapps/tts/lang_pico/de-DE_gl0_sg.bin:system/tts/lang_pico/de-DE_gl0_sg.bin \
	gapps/tts/lang_pico/de-DE_ta.bin:system/tts/lang_pico/de-DE_ta.bin \
	gapps/tts/lang_pico/es-ES_ta.bin:system/tts/lang_pico/es-ES_ta.bin \
	gapps/tts/lang_pico/es-ES_zl0_sg.bin:system/tts/lang_pico/es-ES_zl0_sg.bin \
	gapps/tts/lang_pico/fr-FR_nk0_sg.bin:system/tts/lang_pico/fr-FR_nk0_sg.bin \
	gapps/tts/lang_pico/fr-FR_ta.bin:system/tts/lang_pico/fr-FR_ta.bin \
	gapps/tts/lang_pico/it-IT_cm0_sg.bin:system/tts/lang_pico/it-IT_cm0_sg.bin \
	gapps/tts/lang_pico/it-IT_ta.bin:system/tts/lang_pico/it-IT_ta.bin \
	gapps/usr/srec/en-US/clg:system/usr/srec/en-US/clg \
	gapps/usr/srec/en-US/hotword_symbols:system/usr/srec/en-US/hotword_symbols \
	gapps/usr/srec/en-US/metadata:system/usr/srec/en-US/metadata \
	gapps/usr/srec/en-US/ep_acoustic_model:system/usr/srec/en-US/ep_acoustic_model \
	gapps/usr/srec/en-US/dictation.config:system/usr/srec/en-US/dictation.config \
	gapps/usr/srec/en-US/google_hotword_logistic:system/usr/srec/en-US/google_hotword_logistic \
	gapps/usr/srec/en-US/norm_fst:system/usr/srec/en-US/norm_fst \
	gapps/usr/srec/en-US/rescoring_lm:system/usr/srec/en-US/rescoring_lm \
	gapps/usr/srec/en-US/endpointer_voicesearch.config:system/usr/srec/en-US/endpointer_voicesearch.config \
	gapps/usr/srec/en-US/hmmsyms:system/usr/srec/en-US/hmmsyms \
	gapps/usr/srec/en-US/phonelist:system/usr/srec/en-US/phonelist \
	gapps/usr/srec/en-US/offensive_word_normalizer:system/usr/srec/en-US/offensive_word_normalizer \
	gapps/usr/srec/en-US/embed_phone_nn_model:system/usr/srec/en-US/embed_phone_nn_model \
	gapps/usr/srec/en-US/lintrans_model:system/usr/srec/en-US/lintrans_model \
	gapps/usr/srec/en-US/google_hotword_clg:system/usr/srec/en-US/google_hotword_clg \
	gapps/usr/srec/en-US/compile_grammar.config:system/usr/srec/en-US/compile_grammar.config \
	gapps/usr/srec/en-US/symbols:system/usr/srec/en-US/symbols \
	gapps/usr/srec/en-US/endpointer_dictation.config:system/usr/srec/en-US/endpointer_dictation.config \
	gapps/usr/srec/en-US/normalizer:system/usr/srec/en-US/normalizer \
	gapps/usr/srec/en-US/acoustic_model:system/usr/srec/en-US/acoustic_model \
	gapps/usr/srec/en-US/embed_phone_nn_state_sym:system/usr/srec/en-US/embed_phone_nn_state_sym \
	gapps/usr/srec/en-US/c_fst:system/usr/srec/en-US/c_fst \
	gapps/usr/srec/en-US/g2p_fst:system/usr/srec/en-US/g2p_fst \
	gapps/usr/srec/en-US/grammar.config:system/usr/srec/en-US/grammar.config \
	gapps/usr/srec/en-US/google_hotword.config:system/usr/srec/en-US/google_hotword.config \
	gapps/usr/srec/en-US/contacts.abnf:system/usr/srec/en-US/contacts.abnf \
	gapps/usr/srec/en-US/dict:system/usr/srec/en-US/dict

# Root
PRODUCT_PACKAGES += \
	Superuser \
	su

# MPTCP
PRODUCT_PACKAGES += \
       MPTCPControl

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
# This is where we'd set a backup provider if we had one
#$(call inherit-product, device/sample/products/backup_overlay.mk)
$(call inherit-product, device/samsung/crespo/device.mk)

# Discard inherited values and use our own instead.
PRODUCT_NAME := full_crespo
PRODUCT_DEVICE := crespo
PRODUCT_BRAND := Android
PRODUCT_MODEL := Full Android on Crespo
