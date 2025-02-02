import { ReactNode } from 'react';

interface CardProps {
  children: ReactNode;
  className?: string;
  withGradient?: boolean;
}

export function Card({ children, className = '', withGradient = false }: CardProps) {
  return (
    <div
      className={`p-8 rounded-3xl ${withGradient ? '' :'card-hover' } relative overflow-hidden ${className}`}
      style={
        withGradient
          ? {
              background:
                'linear-gradient(135deg, #1F2937 -1%, #111827 100%)',
            }
          : { background: '#1e2432' }
      }
    >
      {children}
    </div>
  );
} 