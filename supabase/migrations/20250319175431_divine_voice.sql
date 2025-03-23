/*
  # Add Insert Policy for Profiles

  1. Changes
    - Add policy to allow authenticated users to insert their own profile

  2. Security
    - Users can only create their own profile
    - Profile ID must match the authenticated user's ID
*/

CREATE POLICY "Users can create their own profile"
  ON profiles
  FOR INSERT
  TO authenticated
  WITH CHECK (auth.uid() = id);