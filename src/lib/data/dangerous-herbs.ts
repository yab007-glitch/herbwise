/**
 * Safety-first guard for the dangerous long tail of the herb database.
 *
 * HerbAlly indexes 2,700+ herbs — including plants that are outright lethal
 * (abrin-containing rosary pea, unprocessed aconite, etc.). A templated
 * "Benefits, Dosage & Safety" card on those pages implies a supplement
 * relationship that does not exist, so every surface that renders a herb
 * card or hero checks this registry first.
 *
 * Matching is by herb slug. Keep entries conservative: only plants with
 * well-documented severe/lethal toxicity from regulated sources ( Poison
 * Control, FDA, EMA). Slugs verified against the live database.
 */

export interface DangerousHerb {
  /** Human reason shown in warnings, EN. */
  reason: string;
  /** French variant. */
  reasonFr: string;
  /** Which parts / forms are dangerous, e.g. "seeds". */
  parts: string;
}

const DANGEROUS_HERBS: Record<string, DangerousHerb> = {
  "abrus-precatorius": {
    reason:
      "Seeds contain abrin — one of the most toxic substances known. Ingestion can be fatal. Not an herbal medicine.",
    reasonFr:
      "Les graines contiennent de l'abrine — parmi les substances les plus toxiques connues. L'ingestion peut être mortelle. Ce n'est pas un remède à base de plantes.",
    parts: "seeds (whole plant is hazardous)",
  },
  "aconite-processed": {
    reason:
      "Aconite contains aconitine, a deadly cardiotoxin. Even processed forms have caused fatal poisonings. Do not consume.",
    reasonFr:
      "L'aconit contient de l'aconitine, un cardiotoxin mortel. Même les formes traitées ont causé des empoisonnements mortels. Ne pas consommer.",
    parts: "root (all forms)",
  },
  acokanthera: {
    reason:
      "Contains cardiac glycosides similar to ouabain. All parts are highly toxic; traditionally used as a poison arrow ingredient.",
    reasonFr:
      "Contient des hétérosides cardiotoniques proches de l'ouabaïne. Toutes les parties sont très toxiques ; utilisée traditionnellement pour empoisonner les flèches.",
    parts: "all parts",
  },
};

export function getDangerousHerb(slug: string): DangerousHerb | undefined {
  return DANGEROUS_HERBS[slug];
}

export function isDangerousHerb(slug: string): boolean {
  return slug in DANGEROUS_HERBS;
}
