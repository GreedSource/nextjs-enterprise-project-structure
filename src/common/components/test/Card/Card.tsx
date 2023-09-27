import { FC } from 'react';
import styles from './card.module.css';

interface CardProps {
  href: string;
  title: string;
  body: string;
}

export const Card: FC<CardProps> = ({ href, title, body }) => {
  return (
    <a href={href} className={styles.card}>
      <h2>{title}</h2>
      <p>{body}</p>
    </a>
  );
};
