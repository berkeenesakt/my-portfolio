import { IconType } from 'react-icons';
import { Card } from './Card';

interface SocialLink {
  icon: IconType;
  href: string;
  label: string;
}

interface SocialLinksCardProps {
  title: string;
  links: SocialLink[];
}

export function SocialLinksCard({ title, links }: SocialLinksCardProps) {
  return (
    <Card>
      <h2 className="text-xl font-bold mb-4">{title}</h2>
      <div className="flex gap-4">
        {links.map((link, index) => (
          <a
            key={index}
            href={link.href}
            aria-label={link.label}
            target="_blank"
            rel="noopener noreferrer"
            className="w-10 h-10 bg-[#2a2f3d] rounded-full flex items-center justify-center hover:bg-[#3a3f4d] transition-colors"
          >
            <link.icon className="w-5 h-5" />
          </a>
        ))}
      </div>
    </Card>
  );
} 