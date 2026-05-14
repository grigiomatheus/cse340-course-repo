CREATE TABLE organization (
    organization_id SERIAL PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    description TEXT NOT NULL,
    contact_email VARCHAR(255) NOT NULL,
    logo_filename VARCHAR(255) NOT NULL
);

INSERT INTO organization (name, description, contact_email, logo_filename)
VALUES
('BrightFuture Builders', 'A nonprofit focused on improving community infrastructure through sustainable construction projects.', 'info@brightfuturebuilders.org', 'brightfuture-logo.png'),
('GreenHarvest Growers', 'An urban farming collective promoting food sustainability and education in local neighborhoods.', 'contact@greenharvest.org', 'greenharvest-logo.png'),
('UnityServe Volunteers', 'A volunteer coordination group supporting local charities and service initiatives.', 'hello@unityserve.org', 'unityserve-logo.png');

CREATE TABLE project (
    project_id SERIAL PRIMARY KEY,
    organization_id INT NOT NULL,
    title VARCHAR(150) NOT NULL,
    description TEXT NOT NULL,
    location VARCHAR(255) NOT NULL,
    date DATE NOT NULL,
    CONSTRAINT fk_organization
        FOREIGN KEY(organization_id)
        REFERENCES organization(organization_id)
        ON DELETE CASCADE
);

INSERT INTO project (organization_id, title, description, location, date)
VALUES
(1, 'Playground Restoration', 'Help us restore the local playground equipment and lay down new safety mulch.', 'Centennial Park', '2024-06-15'),
(2, 'Spring Seedling Sale Preparation', 'Prepare seedling pots and organize the greenhouse for our annual spring sale.', 'GreenHarvest Main Greenhouse', '2024-03-20'),
(3, 'Food Drive Sorting', 'Sort and package donated canned goods for distribution to local food pantries.', 'Community Center', '2024-11-05');