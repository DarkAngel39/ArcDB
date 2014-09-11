-- LoE World German localization pack
-- 
-- Based on arcgdb

-- This file deletes all data for German language !
-- Preserves other language data.

-- last edited: 28. Aug. 2012

DELETE FROM creature_names_localized WHERE language_code='deDE';
DELETE FROM gameobject_names_localized WHERE language_code='deDE';
DELETE FROM itempages_localized WHERE language_code='deDE';
DELETE FROM items_localized WHERE language_code='deDE';
DELETE FROM npc_text_localized WHERE language_code='deDE';
DELETE FROM quests_localized WHERE language_code='deDE';
DELETE FROM worldstring_tables_localized WHERE language_code='deDE';

DELETE FROM db_version WHERE db_name='LoE German';

