package db

import (
	"context"
	"testing"

	"github.com/bxcodec/faker/v4"
	"github.com/stretchr/testify/require"
)

func TestCreateCompany(t *testing.T) {
	company_name := faker.Name()

	company, err := testQueries.CreateCompany(context.Background(), company_name)
	require.NoError(t, err)
	require.NotEmpty(t, company)

	require.Equal(t, company_name, company.CompanyName)

	require.NotZero(t, company.ID)
}
