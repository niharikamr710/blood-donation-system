-- View to filter for donors who haven't donated in the last 90 days
CREATE OR REPLACE VIEW public.eligible_donors AS
SELECT *
FROM public."Users"
WHERE
  last_donated_at IS NULL 
  OR last_donated_at <= (CURRENT_DATE - INTERVAL '90 days');