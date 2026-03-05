CREATE OR REPLACE VIEW clean_transactions AS
        SELECT
            "InvoiceNo",
            "StockCode",
            "Description",
            "Quantity",
            "InvoiceDate",
            "UnitPrice",
            "CustomerID",
            "Country",
            "Quantity" * "UnitPrice" AS "Revenue"
        FROM transactions
        WHERE "Quantity" > 0
          AND "CustomerID" IS NOT NULL
          AND "InvoiceNo" NOT LIKE 'C%';