-- Seed log-demanded pair round 2 (chat-log mining, Sep 2026).
-- Adds Warfarin + Sedatives rows for ashwagandha (the two most-asked
-- combinations still missing after round 1). Conservative severities,
-- established vocabulary, FR translations inline, rerunnable guards.

-- 1. Ashwagandha + Warfarin (Coumadin) (moderate)
INSERT INTO public.drug_interactions
  (herb_id, drug_name, rxcui, severity, description, mechanism, evidence_level, source, translations)
SELECT
  (SELECT id FROM public.herbs WHERE slug = 'ashwagandha'),
  'Warfarin (Coumadin)', NULL, 'moderate',
  'Limited evidence suggests ashwagandha may affect platelet aggregation and thyroid hormone levels, either of which can alter warfarin''s effect. Monitor INR closely if combining them and keep ashwagandha dosing consistent.',
  'Ashwagandha''s withanolides show mild antiplatelet activity in vitro, and its thyroid-stimulating properties can change warfarin''s protein binding and metabolism indirectly.',
  'limited-evidence', 'Natural Medicines Database',
  jsonb_build_object('fr', jsonb_build_object(
    'description', 'Des données limitées suggèrent que l''ashwagandha peut affecter l''agrégation plaquettaire et les hormones thyroïdiennes, modifiant l''effet de la warfarine. Surveillez l''INR de près et gardez un dosage stable.',
    'mechanism', 'Les withanolides montrent une légère activité antiplaquettaire in vitro, et ses propriétés thyroïdo-stimulantes peuvent modifier indirectement la liaison protéique et le métabolisme de la warfarine.'
  ))
WHERE NOT EXISTS (
  SELECT 1 FROM public.drug_interactions di
  JOIN public.herbs h ON h.id = di.herb_id
  WHERE h.slug = 'ashwagandha' AND di.drug_name = 'Warfarin (Coumadin)'
);

-- 2. Ashwagandha + Sedatives and Benzodiazepines (moderate)
INSERT INTO public.drug_interactions
  (herb_id, drug_name, rxcui, severity, description, mechanism, evidence_level, source, translations)
SELECT
  (SELECT id FROM public.herbs WHERE slug = 'ashwagandha'),
  'Sedatives and Benzodiazepines', NULL, 'moderate',
  'Ashwagandha has GABAergic activity and may enhance the sedative effects of benzodiazepines and other CNS depressants, increasing drowsiness and impairing coordination. Avoid driving and consider dose reduction with prescriber guidance.',
  'Withanolides modulate GABA-A receptor signaling, producing additive CNS depression alongside benzodiazepine sedation.',
  'moderate-evidence', 'Natural Medicines Database',
  jsonb_build_object('fr', jsonb_build_object(
    'description', 'L''ashwagandha possède une activité GABAergique et peut potentialiser les effets sédatifs des benzodiazépines et autres dépresseurs du SNC, augmentant la somnolence et altérant la coordination. Évitez de conduire et envisagez une réduction de dose avec votre médecin.',
    'mechanism', 'Les withanolides modulent la signalisation des récepteurs GABA-A, produisant une dépression du SNC additive à la sédation des benzodiazépines.'
  ))
WHERE NOT EXISTS (
  SELECT 1 FROM public.drug_interactions di
  JOIN public.herbs h ON h.id = di.herb_id
  WHERE h.slug = 'ashwagandha' AND di.drug_name = 'Sedatives and Benzodiazepines'
);