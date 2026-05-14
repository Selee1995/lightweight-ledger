.class public Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao_Impl;
.super Ljava/lang/Object;
.source "CategoryDao_Impl.java"

# interfaces
.implements Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao;


# instance fields
.field private final __db:Landroid/arch/persistence/room/RoomDatabase;

.field private final __insertionAdapterOfCategoryEntity:Landroid/arch/persistence/room/EntityInsertionAdapter;

.field private final __preparedStmtOfDelete:Landroid/arch/persistence/room/SharedSQLiteStatement;

.field private final __preparedStmtOfUpdate:Landroid/arch/persistence/room/SharedSQLiteStatement;

.field private final __preparedStmtOfUpdateOrder:Landroid/arch/persistence/room/SharedSQLiteStatement;


# direct methods
.method public constructor <init>(Landroid/arch/persistence/room/RoomDatabase;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "__db"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    .line 31
    new-instance v0, Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao_Impl$1;-><init>(Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao_Impl;->__insertionAdapterOfCategoryEntity:Landroid/arch/persistence/room/EntityInsertionAdapter;

    .line 61
    new-instance v0, Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao_Impl$2;-><init>(Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao_Impl;->__preparedStmtOfDelete:Landroid/arch/persistence/room/SharedSQLiteStatement;

    .line 68
    new-instance v0, Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao_Impl$3;-><init>(Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao_Impl;->__preparedStmtOfUpdate:Landroid/arch/persistence/room/SharedSQLiteStatement;

    .line 75
    new-instance v0, Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao_Impl$4;

    invoke-direct {v0, p0, p1}, Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao_Impl$4;-><init>(Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao_Impl;->__preparedStmtOfUpdateOrder:Landroid/arch/persistence/room/SharedSQLiteStatement;

    return-void
.end method


# virtual methods
.method public allCategory()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;",
            ">;"
        }
    .end annotation

    const-string v0, "select * from category order by category_order ASC"

    const/4 v1, 0x0

    .line 335
    invoke-static {v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v0

    .line 336
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v1, v0}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_0
    const-string v2, "category_id"

    .line 338
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    const-string v3, "category_unique_name"

    .line 339
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    const-string v4, "category_name"

    .line 340
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v5, "category_icon"

    .line 341
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v6, "category_order"

    .line 342
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v7, "category_type"

    .line 343
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const-string v8, "category_account_id"

    .line 344
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string v9, "category_sync_status"

    .line 345
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 346
    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 347
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 349
    new-instance v11, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;

    invoke-direct {v11}, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;-><init>()V

    .line 351
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 352
    invoke-virtual {v11, v12, v13}, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->setId(J)V

    .line 354
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 355
    invoke-virtual {v11, v12}, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->setUniqueName(Ljava/lang/String;)V

    .line 357
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 358
    invoke-virtual {v11, v12}, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->setName(Ljava/lang/String;)V

    .line 360
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 361
    invoke-virtual {v11, v12}, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->setIcon(Ljava/lang/String;)V

    .line 363
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 364
    invoke-virtual {v11, v12}, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->setOrder(I)V

    .line 366
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 367
    invoke-virtual {v11, v12}, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->setType(I)V

    .line 369
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 370
    invoke-virtual {v11, v12, v13}, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->setAccountId(J)V

    .line 372
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 373
    invoke-virtual {v11, v12}, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->setSyncStatus(I)V

    .line 374
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 378
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 379
    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    return-object v10

    :catchall_0
    move-exception v2

    .line 378
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 379
    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    .line 380
    goto :goto_2

    :goto_1
    throw v2

    :goto_2
    goto :goto_1
.end method

.method public allExpenseCategory()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;",
            ">;"
        }
    .end annotation

    const-string v0, "select * from category where category_type = 0 order by category_order ASC"

    const/4 v1, 0x0

    .line 233
    invoke-static {v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v0

    .line 234
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v1, v0}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_0
    const-string v2, "category_id"

    .line 236
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    const-string v3, "category_unique_name"

    .line 237
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    const-string v4, "category_name"

    .line 238
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v5, "category_icon"

    .line 239
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v6, "category_order"

    .line 240
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v7, "category_type"

    .line 241
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const-string v8, "category_account_id"

    .line 242
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string v9, "category_sync_status"

    .line 243
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 244
    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 245
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 247
    new-instance v11, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;

    invoke-direct {v11}, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;-><init>()V

    .line 249
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 250
    invoke-virtual {v11, v12, v13}, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->setId(J)V

    .line 252
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 253
    invoke-virtual {v11, v12}, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->setUniqueName(Ljava/lang/String;)V

    .line 255
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 256
    invoke-virtual {v11, v12}, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->setName(Ljava/lang/String;)V

    .line 258
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 259
    invoke-virtual {v11, v12}, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->setIcon(Ljava/lang/String;)V

    .line 261
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 262
    invoke-virtual {v11, v12}, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->setOrder(I)V

    .line 264
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 265
    invoke-virtual {v11, v12}, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->setType(I)V

    .line 267
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 268
    invoke-virtual {v11, v12, v13}, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->setAccountId(J)V

    .line 270
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 271
    invoke-virtual {v11, v12}, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->setSyncStatus(I)V

    .line 272
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 276
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 277
    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    return-object v10

    :catchall_0
    move-exception v2

    .line 276
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 277
    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    .line 278
    goto :goto_2

    :goto_1
    throw v2

    :goto_2
    goto :goto_1
.end method

.method public allIncomeCategory()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;",
            ">;"
        }
    .end annotation

    const-string v0, "select * from category where category_type = 1 order by category_order ASC"

    const/4 v1, 0x0

    .line 284
    invoke-static {v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v0

    .line 285
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v1, v0}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_0
    const-string v2, "category_id"

    .line 287
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    const-string v3, "category_unique_name"

    .line 288
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    const-string v4, "category_name"

    .line 289
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v5, "category_icon"

    .line 290
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v6, "category_order"

    .line 291
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v7, "category_type"

    .line 292
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const-string v8, "category_account_id"

    .line 293
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string v9, "category_sync_status"

    .line 294
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 295
    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 296
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 298
    new-instance v11, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;

    invoke-direct {v11}, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;-><init>()V

    .line 300
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 301
    invoke-virtual {v11, v12, v13}, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->setId(J)V

    .line 303
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 304
    invoke-virtual {v11, v12}, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->setUniqueName(Ljava/lang/String;)V

    .line 306
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 307
    invoke-virtual {v11, v12}, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->setName(Ljava/lang/String;)V

    .line 309
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 310
    invoke-virtual {v11, v12}, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->setIcon(Ljava/lang/String;)V

    .line 312
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 313
    invoke-virtual {v11, v12}, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->setOrder(I)V

    .line 315
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 316
    invoke-virtual {v11, v12}, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->setType(I)V

    .line 318
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 319
    invoke-virtual {v11, v12, v13}, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->setAccountId(J)V

    .line 321
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 322
    invoke-virtual {v11, v12}, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->setSyncStatus(I)V

    .line 323
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 327
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 328
    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    return-object v10

    :catchall_0
    move-exception v2

    .line 327
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 328
    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    .line 329
    goto :goto_2

    :goto_1
    throw v2

    :goto_2
    goto :goto_1
.end method

.method public categorySize()I
    .locals 4

    const-string v0, "select count(*) from category"

    const/4 v1, 0x0

    .line 161
    invoke-static {v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v0

    .line 162
    iget-object v2, p0, Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v2, v0}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v2

    .line 165
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 166
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 173
    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    return v1

    :catchall_0
    move-exception v1

    .line 172
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 173
    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    .line 174
    throw v1
.end method

.method public delete(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "categoryUuid"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao_Impl;->__preparedStmtOfDelete:Landroid/arch/persistence/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroid/arch/persistence/room/SharedSQLiteStatement;->acquire()Landroid/arch/persistence/db/SupportSQLiteStatement;

    move-result-object v0

    .line 98
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 102
    :try_start_0
    invoke-interface {v0, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 104
    :cond_0
    invoke-interface {v0, v1, p1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 106
    :goto_0
    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 107
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p1}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p1}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 110
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao_Impl;->__preparedStmtOfDelete:Landroid/arch/persistence/room/SharedSQLiteStatement;

    invoke-virtual {p1, v0}, Landroid/arch/persistence/room/SharedSQLiteStatement;->release(Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    .line 109
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 110
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao_Impl;->__preparedStmtOfDelete:Landroid/arch/persistence/room/SharedSQLiteStatement;

    invoke-virtual {v1, v0}, Landroid/arch/persistence/room/SharedSQLiteStatement;->release(Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    .line 111
    throw p1
.end method

.method public varargs insert([Lcom/coderpage/mine/app/tally/persistence/sql/entity/CategoryEntity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entity"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao_Impl;->__insertionAdapterOfCategoryEntity:Landroid/arch/persistence/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/EntityInsertionAdapter;->insert([Ljava/lang/Object;)V

    .line 89
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p1}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p1}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 92
    throw p1
.end method

.method public queryById(J)Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    const-string v0, "select * from category where category_id = ?"

    const/4 v1, 0x1

    .line 180
    invoke-static {v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v0

    .line 182
    invoke-virtual {v0, v1, p1, p2}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 183
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p1, v0}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    const-string p2, "category_id"

    .line 185
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    const-string v1, "category_unique_name"

    .line 186
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    const-string v2, "category_name"

    .line 187
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    const-string v3, "category_icon"

    .line 188
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    const-string v4, "category_order"

    .line 189
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v5, "category_type"

    .line 190
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v6, "category_account_id"

    .line 191
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v7, "category_sync_status"

    .line 192
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 194
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 195
    new-instance v8, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;

    invoke-direct {v8}, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;-><init>()V

    .line 197
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 198
    invoke-virtual {v8, v9, v10}, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->setId(J)V

    .line 200
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 201
    invoke-virtual {v8, p2}, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->setUniqueName(Ljava/lang/String;)V

    .line 203
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 204
    invoke-virtual {v8, p2}, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->setName(Ljava/lang/String;)V

    .line 206
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 207
    invoke-virtual {v8, p2}, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->setIcon(Ljava/lang/String;)V

    .line 209
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    .line 210
    invoke-virtual {v8, p2}, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->setOrder(I)V

    .line 212
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    .line 213
    invoke-virtual {v8, p2}, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->setType(I)V

    .line 215
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 216
    invoke-virtual {v8, v1, v2}, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->setAccountId(J)V

    .line 218
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    .line 219
    invoke-virtual {v8, p2}, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->setSyncStatus(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    .line 225
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 226
    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    return-object v8

    :catchall_0
    move-exception p2

    .line 225
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 226
    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    .line 227
    throw p2
.end method

.method public update(JLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "categoryId",
            "icon",
            "name"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao_Impl;->__preparedStmtOfUpdate:Landroid/arch/persistence/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroid/arch/persistence/room/SharedSQLiteStatement;->acquire()Landroid/arch/persistence/db/SupportSQLiteStatement;

    move-result-object v0

    .line 117
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    const/4 v1, 0x1

    if-nez p3, :cond_0

    .line 121
    :try_start_0
    invoke-interface {v0, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 123
    :cond_0
    invoke-interface {v0, v1, p3}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_0
    const/4 p3, 0x2

    if-nez p4, :cond_1

    .line 127
    invoke-interface {v0, p3}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 129
    :cond_1
    invoke-interface {v0, p3, p4}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_1
    const/4 p3, 0x3

    .line 132
    invoke-interface {v0, p3, p1, p2}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 133
    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 134
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p1}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p1}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 137
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao_Impl;->__preparedStmtOfUpdate:Landroid/arch/persistence/room/SharedSQLiteStatement;

    invoke-virtual {p1, v0}, Landroid/arch/persistence/room/SharedSQLiteStatement;->release(Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    .line 136
    iget-object p2, p0, Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p2}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 137
    iget-object p2, p0, Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao_Impl;->__preparedStmtOfUpdate:Landroid/arch/persistence/room/SharedSQLiteStatement;

    invoke-virtual {p2, v0}, Landroid/arch/persistence/room/SharedSQLiteStatement;->release(Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    .line 138
    throw p1
.end method

.method public updateOrder(JI)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "categoryId",
            "order"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao_Impl;->__preparedStmtOfUpdateOrder:Landroid/arch/persistence/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroid/arch/persistence/room/SharedSQLiteStatement;->acquire()Landroid/arch/persistence/db/SupportSQLiteStatement;

    move-result-object v0

    .line 144
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    const/4 v1, 0x1

    int-to-long v2, p3

    .line 147
    :try_start_0
    invoke-interface {v0, v1, v2, v3}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/4 p3, 0x2

    .line 149
    invoke-interface {v0, p3, p1, p2}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 150
    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 151
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p1}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p1}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 154
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao_Impl;->__preparedStmtOfUpdateOrder:Landroid/arch/persistence/room/SharedSQLiteStatement;

    invoke-virtual {p1, v0}, Landroid/arch/persistence/room/SharedSQLiteStatement;->release(Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    .line 153
    iget-object p2, p0, Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p2}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 154
    iget-object p2, p0, Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao_Impl;->__preparedStmtOfUpdateOrder:Landroid/arch/persistence/room/SharedSQLiteStatement;

    invoke-virtual {p2, v0}, Landroid/arch/persistence/room/SharedSQLiteStatement;->release(Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    .line 155
    throw p1
.end method
