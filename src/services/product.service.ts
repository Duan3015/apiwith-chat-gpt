import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { Product } from '../entities/product.entity';
import { Category } from '../entities/category.entity';

@Injectable()
export class ProductService {
  constructor(
    @InjectRepository(Product)
    private readonly productRepository: Repository<Product>,
    @InjectRepository(Category)
    private readonly categoryRepository: Repository<Category>,
  ) {}

  async findAll(): Promise<Product[]> {
    return await this.productRepository.find({ relations: ['category'] });
  }

  async findById(id: number): Promise<Product> {
    return await this.productRepository.findOne({
      where: { id: id },
      relations: {
        category: true,
      },
    });
  }

  /* async create(product: Product): Promise<Product> {
    return await this.productRepository.save(product);
  } */

  async create(product: Product): Promise<Product> {
    const category = await this.categoryRepository.findOneBy({
      id: +product.category,
    });
    product.category = category;
    return this.productRepository.save(product);
  }

  async update(id: number, product: Product): Promise<Product> {
    await this.productRepository.update(id, product);
    return await this.productRepository.findOne({ where: { id } });
  }

  async delete(id: number): Promise<void> {
    await this.productRepository.delete(id);
  }
}
