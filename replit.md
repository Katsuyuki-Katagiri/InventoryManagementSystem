# Medical Inventory Management System

## Overview

This is a comprehensive medical device inventory management system built with a modern web stack. The application is designed to track medical products, manage inventory with lot numbers and expiry dates, handle departments and facilities, and process loan data from Excel files. The system is specifically tailored for healthcare organizations managing medical equipment and consumables.

## System Architecture

### Frontend Architecture
- **Framework**: React 18 with TypeScript
- **Build Tool**: Vite for fast development and optimized builds
- **UI Framework**: Radix UI components with shadcn/ui component library
- **Styling**: Tailwind CSS with CSS variables for theming
- **State Management**: TanStack Query (React Query) for server state management
- **Routing**: Wouter for lightweight client-side routing
- **Form Handling**: React Hook Form with Zod validation

### Backend Architecture
- **Runtime**: Node.js with Express.js framework
- **Language**: TypeScript with ES modules
- **Database ORM**: Drizzle ORM for type-safe database operations
- **Database**: PostgreSQL (configured for Neon serverless)
- **File Processing**: XLSX library for Excel file parsing
- **Session Management**: Connect-pg-simple for PostgreSQL session storage

### Database Schema
The system uses a comprehensive medical inventory schema with the following key entities:
- **Medical Products**: Product master data with codes, names, specifications, and pricing
- **Facilities**: Healthcare facility management
- **Departments**: Department organization within facilities
- **Inventory**: Lot-based inventory tracking with expiry dates and locations
- **Monthly Inventory**: Time-based inventory snapshots for historical tracking

## Key Components

### Product Management
- Product master data with 10-digit product codes
- Generic names, commercial names, and specifications
- Category-based organization with asset classification
- Price management and low stock thresholds

### Inventory Tracking
- Lot number-based inventory management
- Expiry date tracking for medical devices
- Storage location management
- Shipment and loan tracking integration
- Monthly inventory snapshots for reporting

### Excel Integration
- Excel file upload and processing for loan data
- Automatic matching of loan records with inventory items
- Data validation and error handling
- Support for Japanese text and medical device nomenclature

### User Interface
- Responsive design optimized for desktop and mobile
- Clean, modern interface with shadcn/ui components
- Real-time search and filtering capabilities
- Modal-based forms for data entry
- Statistics dashboard with key metrics

## Data Flow

1. **Product Registration**: Medical products are registered with complete specifications and pricing
2. **Inventory Management**: Stock is tracked by lot numbers with expiry dates and locations
3. **Loan Processing**: Excel files containing loan data are uploaded and processed
4. **Data Matching**: Loan records are automatically matched with existing inventory items
5. **Reporting**: Monthly snapshots and real-time statistics provide insights

## External Dependencies

### Database
- **Neon PostgreSQL**: Serverless PostgreSQL database for production
- **WebSocket Support**: Real-time database connections via WebSocket

### UI Libraries
- **Radix UI**: Comprehensive set of accessible UI primitives
- **Lucide React**: Icon library for consistent iconography
- **Date-fns**: Date manipulation and formatting utilities

### Development Tools
- **TypeScript**: Full type safety across frontend and backend
- **ESBuild**: Fast JavaScript bundler for production builds
- **Drizzle Kit**: Database migration and schema management

## Deployment Strategy

### Development Environment
- **Replit Integration**: Configured for Replit development environment
- **Hot Reload**: Vite dev server with HMR for rapid development
- **Database Provisioning**: Automatic PostgreSQL database setup

### Production Build
- **Frontend**: Vite builds optimized static assets
- **Backend**: ESBuild bundles Node.js application
- **Database Migrations**: Drizzle handles schema migrations
- **Autoscale Deployment**: Configured for autoscaling deployment target

### Environment Configuration
- **PORT**: Configurable port (default 5000)
- **DATABASE_URL**: PostgreSQL connection string
- **NODE_ENV**: Environment-specific configuration

## Changelog

```
Changelog:
- June 15, 2025. Initial setup
- June 15, 2025. Completed comprehensive Excel loan data matching with 690 loan records across 5 departments, successfully matched 158 inventory items with accurate responsible person assignments using flexible matching criteria (department code + product code prefix + lot number patterns)
```

## User Preferences

```
Preferred communication style: Simple, everyday language.
```