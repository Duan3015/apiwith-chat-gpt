import { Module } from '@nestjs/common';
import { ProductController } from './controllers/product.controller';
import { ProductService } from './services/product.service';
import { Product } from './entities/product.entity';
import { Category } from './entities/category.entity';
import { TypeOrmModule } from '@nestjs/typeorm';
import { CategoriesController } from './controllers/category.controller';
import { CategoriesService } from './services/category.service';

@Module({
  imports: [
    TypeOrmModule.forFeature([Product, Category]),
    TypeOrmModule.forRoot({
      type: 'mysql',
      host: 'localhost',
      port: 3306,
      username: 'root',
      password: '1234',
      database: 'test',
      entities: [Product, Category],
      synchronize: true,
    }),
  ],
  controllers: [ProductController, CategoriesController],
  providers: [ProductService, CategoriesService],
})
export class AppModule {}
