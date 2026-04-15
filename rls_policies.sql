-- 1. Enable RLS on the tables
ALTER TABLE public."Users" ENABLE ROW LEVEL SECURITY;
ALTER TABLE public."Blood_request" ENABLE ROW LEVEL SECURITY;

-- 2. User Policies
CREATE POLICY "Users can read their own profile"
ON public."Users"
FOR SELECT
USING (auth.uid()::text = "User_id"::text);

-- 3. Blood Request Policies
CREATE POLICY "Anyone logged in can insert a blood request"
ON public."Blood_request"
FOR INSERT
WITH CHECK (auth.uid() IS NOT NULL);

CREATE POLICY "Anyone can read blood requests"
ON public."Blood_request"
FOR SELECT
USING (true);