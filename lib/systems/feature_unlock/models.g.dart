// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FeaturesStateImpl _$$FeaturesStateImplFromJson(Map<String, dynamic> json) =>
    _$FeaturesStateImpl(
      features: (json['features'] as Map<String, dynamic>).map(
        (k, e) => MapEntry($enumDecode(_$FeatureEnumMap, k), e as bool),
      ),
    );

Map<String, dynamic> _$$FeaturesStateImplToJson(_$FeaturesStateImpl instance) =>
    <String, dynamic>{
      'features':
          instance.features.map((k, e) => MapEntry(_$FeatureEnumMap[k]!, e)),
    };

const _$FeatureEnumMap = {
  Feature.showRewards: 'showRewards',
  Feature.canPurchaseAvailableSlot: 'canPurchaseAvailableSlot',
  Feature.canPurchaseActiveSlot: 'canPurchaseActiveSlot',
  Feature.canSaveLoadGame: 'canSaveLoadGame',
  Feature.canSeePrgression: 'canSeePrgression',
};
