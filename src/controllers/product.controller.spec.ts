import { Test, TestingModule } from '@nestjs/testing';
import { ProductController } from '../controllers/product.controller';
import { ProductService } from '../services/product.service';
import { Product } from '../entities/product.entity';

describe('ProductsController', () => {
  let controller: ProductController;
  let service: ProductService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [ProductController],
      providers: [ProductService],
    }).compile();

    controller = module.get<ProductController>(ProductController);
    service = module.get<ProductService>(ProductService);
  });

  describe('findAll', () => {
    it('should return an array of products', async () => {
      const result: Product[] = [new Product()];
      jest.spyOn(service, 'findAll').mockImplementation(async () => result);

      expect(await controller.findAll()).toBe(result);
    });
  });

  /*   describe('findOne', () => {
    it('should return a product by id', async () => {
      const id = 1;
      const result: Product = new Product();
      jest.spyOn(service, 'findOne').mockImplementation(async () => result);

      expect(await controller.findOne({ where: id })).toBe(result);
    });
  }); */

  describe('create', () => {
    it('should create a product', async () => {
      const product = new Product();
      jest.spyOn(service, 'create').mockImplementation(async () => product);

      expect(await controller.create(product)).toBe(product);
    });
  });

  /*   describe('update', () => {
    it('should update a product by id', async () => {
      const id = 1;
      const product = new Product();
      jest.spyOn(service, 'update').mockImplementation(async () => product);

      expect(await controller.update(id, product)).toBe(product);
    });
  }); */

  /*   describe('remove', () => {
    it('should remove a product by id', async () => {
      const id = 1;
      const result = { deleted: true };
      jest.spyOn(service, 'remove').mockImplementation(async () => result);

      expect(await controller.remove(id)).toBe(result);
    });
  }); */
});
