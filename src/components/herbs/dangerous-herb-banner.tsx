"use client";

import { AlertOctagon, X } from "lucide-react";
import { useState } from "react";
import { useLocale } from "next-intl";
import {
  getDangerousHerb,
  type DangerousHerb,
} from "@/lib/data/dangerous-herbs";

/**
 * Dismissible, high-contrast "not a supplement" banner for lethal plants.
 * Rendered above the fold on herb detail pages whose slug is in the
 * dangerous registry. Persistence is deliberately NOT stored — the warning
 * reappears on every visit because the risk is lethal, not annoying.
 */
export function DangerousHerbBanner({ slug }: { slug: string }) {
  const locale = useLocale();
  const [dismissed, setDismissed] = useState(false);
  const info: DangerousHerb | undefined = getDangerousHerb(slug);
  if (!info || dismissed) return null;

  return (
    <div
      role="alert"
      className="relative flex items-start gap-3 rounded-2xl border-2 border-red-600/60 bg-red-50 p-4 dark:border-red-500/50 dark:bg-red-950/40"
    >
      <AlertOctagon className="size-6 shrink-0 text-red-600 dark:text-red-400" />
      <div className="min-w-0 flex-1">
        <p className="font-bold text-red-900 dark:text-red-200">
          {locale === "fr"
            ? "Danger — ne pas utiliser"
            : "Danger — do not use this plant"}
        </p>
        <p className="mt-1 text-sm text-red-800 dark:text-red-300">
          {locale === "fr" ? info.reasonFr : info.reason}
        </p>
        <p className="mt-1 text-xs text-red-700/80 dark:text-red-400/80">
          {locale === "fr"
            ? `Parties concernées : ${info.parts}. En cas d'exposition : Centre antipoison / 911.`
            : `Affected parts: ${info.parts}. If exposed: Poison Control / 911.`}
        </p>
      </div>
      <button
        onClick={() => setDismissed(true)}
        aria-label={locale === "fr" ? "Fermer" : "Dismiss"}
        className="shrink-0 rounded-lg p-1 text-red-600 hover:bg-red-100 dark:text-red-400 dark:hover:bg-red-900/40"
      >
        <X className="size-5" />
      </button>
    </div>
  );
}
