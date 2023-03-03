﻿using Microsoft.AspNetCore.Mvc;
using JewelryManagement.Gateways.Jewelry;

namespace JewelryManagement.Contexts.Jewelry
{
    public class CreateJewelryContext
    {
        public CreateJewelryGateway CreateJewelryGateway;

        public CreateJewelryContext()
        {
            CreateJewelryGateway = new CreateJewelryGateway();
        }

        public JsonResult Execute(Models.Jewelry jewelry)
        {
            try
            {
                CreateJewelryGateway.Create(jewelry);

                return new JsonResult("Added Successfully");
            }
            catch
            {
                return new JsonResult("Add Failed!");
            }
        }
    }
}