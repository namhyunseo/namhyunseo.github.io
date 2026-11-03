import { defineCollection } from 'astro:content';
import { glob } from 'astro/loaders';
import { z } from 'astro/zod';

// 글 = posts/*.md (옵시디언 볼트). 맨 위 frontmatter 에 title · date 만.
const posts = defineCollection({
  loader: glob({ pattern: ['*.md', '!_*.md'], base: './posts' }),
  schema: z.object({
    title: z.string(),
    date: z.coerce.date(),
    draft: z.boolean().optional(),
  }),
});

export const collections = { posts };
