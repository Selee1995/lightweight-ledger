.class public Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao_Impl;
.super Ljava/lang/Object;
.source "RecordDao_Impl.java"

# interfaces
.implements Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao;


# instance fields
.field private final __db:Landroid/arch/persistence/room/RoomDatabase;

.field private final __deletionAdapterOfRecordEntity:Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;

.field private final __insertionAdapterOfRecordEntity:Landroid/arch/persistence/room/EntityInsertionAdapter;

.field private final __insertionAdapterOfRecordEntity_1:Landroid/arch/persistence/room/EntityInsertionAdapter;

.field private final __preparedStmtOfDeleteAllFromCategory:Landroid/arch/persistence/room/SharedSQLiteStatement;

.field private final __updateAdapterOfRecordEntity:Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;


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

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    .line 39
    new-instance v0, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao_Impl$1;-><init>(Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao_Impl;->__insertionAdapterOfRecordEntity:Landroid/arch/persistence/room/EntityInsertionAdapter;

    .line 71
    new-instance v0, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao_Impl$2;-><init>(Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao_Impl;->__insertionAdapterOfRecordEntity_1:Landroid/arch/persistence/room/EntityInsertionAdapter;

    .line 103
    new-instance v0, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao_Impl$3;-><init>(Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao_Impl;->__deletionAdapterOfRecordEntity:Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;

    .line 114
    new-instance v0, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao_Impl$4;

    invoke-direct {v0, p0, p1}, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao_Impl$4;-><init>(Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao_Impl;->__updateAdapterOfRecordEntity:Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;

    .line 147
    new-instance v0, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao_Impl$5;

    invoke-direct {v0, p0, p1}, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao_Impl$5;-><init>(Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao_Impl;->__preparedStmtOfDeleteAllFromCategory:Landroid/arch/persistence/room/SharedSQLiteStatement;

    return-void
.end method


# virtual methods
.method public delete(Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expense"
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    .line 184
    :try_start_0
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao_Impl;->__deletionAdapterOfRecordEntity:Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    .line 185
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p1}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p1}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 188
    throw p1
.end method

.method public deleteAllFromCategory(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "categoryUuid"
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao_Impl;->__preparedStmtOfDeleteAllFromCategory:Landroid/arch/persistence/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroid/arch/persistence/room/SharedSQLiteStatement;->acquire()Landroid/arch/persistence/db/SupportSQLiteStatement;

    move-result-object v0

    .line 207
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 211
    :try_start_0
    invoke-interface {v0, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 213
    :cond_0
    invoke-interface {v0, v1, p1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 215
    :goto_0
    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 216
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p1}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p1}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 219
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao_Impl;->__preparedStmtOfDeleteAllFromCategory:Landroid/arch/persistence/room/SharedSQLiteStatement;

    invoke-virtual {p1, v0}, Landroid/arch/persistence/room/SharedSQLiteStatement;->release(Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    .line 218
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 219
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao_Impl;->__preparedStmtOfDeleteAllFromCategory:Landroid/arch/persistence/room/SharedSQLiteStatement;

    invoke-virtual {v1, v0}, Landroid/arch/persistence/room/SharedSQLiteStatement;->release(Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    .line 220
    throw p1
.end method

.method public insert(Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "record"
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao_Impl;->__insertionAdapterOfRecordEntity:Landroid/arch/persistence/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/EntityInsertionAdapter;->insertAndReturnId(Ljava/lang/Object;)J

    move-result-wide v0

    .line 161
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p1}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p1}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    return-wide v0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 165
    throw p1
.end method

.method public varargs insert([Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;)[J
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "records"
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao_Impl;->__insertionAdapterOfRecordEntity_1:Landroid/arch/persistence/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/EntityInsertionAdapter;->insertAndReturnIdsArray([Ljava/lang/Object;)[J

    move-result-object p1

    .line 173
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 177
    throw p1
.end method

.method public query(IJJJJ)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "startTime",
            "endTime",
            "limit",
            "offset"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJJJ)",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/persistence/model/Record;",
            ">;"
        }
    .end annotation

    const-string v0, "select * from record left outer join category on record.record_category_unique_name=category.category_unique_name where record_type == ? and record_time >= ? and record_time <= ? order by record_time desc limit ? offset ?"

    const/4 v1, 0x5

    .line 370
    invoke-static {v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v2

    move/from16 v0, p1

    int-to-long v3, v0

    const/4 v0, 0x1

    .line 372
    invoke-virtual {v2, v0, v3, v4}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindLong(IJ)V

    const/4 v0, 0x2

    move-wide/from16 v3, p2

    .line 374
    invoke-virtual {v2, v0, v3, v4}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindLong(IJ)V

    const/4 v0, 0x3

    move-wide/from16 v3, p4

    .line 376
    invoke-virtual {v2, v0, v3, v4}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindLong(IJ)V

    const/4 v0, 0x4

    move-wide/from16 v3, p6

    .line 378
    invoke-virtual {v2, v0, v3, v4}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindLong(IJ)V

    move-wide/from16 v3, p8

    .line 380
    invoke-virtual {v2, v1, v3, v4}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindLong(IJ)V

    move-object/from16 v1, p0

    .line 381
    iget-object v0, v1, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0, v2}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v3

    :try_start_0
    const-string v0, "record_id"

    .line 383
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    const-string v4, "record_account_id"

    .line 384
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v5, "record_time"

    .line 385
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v6, "record_amount"

    .line 386
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v7, "record_category_unique_name"

    .line 387
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const-string v8, "record_desc"

    .line 388
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string v9, "record_sync_id"

    .line 389
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const-string v10, "record_sync_status"

    .line 390
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const-string v11, "record_type"

    .line 391
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    const-string v12, "category_name"

    .line 392
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    const-string v13, "category_icon"

    .line 393
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 394
    new-instance v14, Ljava/util/ArrayList;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v15

    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 395
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 397
    new-instance v15, Lcom/coderpage/mine/app/tally/persistence/model/Record;

    invoke-direct {v15}, Lcom/coderpage/mine/app/tally/persistence/model/Record;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v2

    .line 399
    :try_start_1
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 400
    invoke-virtual {v15, v1, v2}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setId(J)V

    .line 402
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 403
    invoke-virtual {v15, v1, v2}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setAccountId(J)V

    .line 405
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 406
    invoke-virtual {v15, v1, v2}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setTime(J)V

    .line 408
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v1

    .line 409
    invoke-virtual {v15, v1, v2}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setAmount(D)V

    .line 411
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 412
    invoke-virtual {v15, v1}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setCategoryUniqueName(Ljava/lang/String;)V

    .line 414
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 415
    invoke-virtual {v15, v1}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setDesc(Ljava/lang/String;)V

    .line 417
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 418
    invoke-virtual {v15, v1}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setSyncId(Ljava/lang/String;)V

    .line 420
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 421
    invoke-virtual {v15, v1}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setSyncStatus(I)V

    .line 423
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 424
    invoke-virtual {v15, v1}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setType(I)V

    .line 426
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 427
    invoke-virtual {v15, v1}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setCategoryName(Ljava/lang/String;)V

    .line 429
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 430
    invoke-virtual {v15, v1}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setCategoryIcon(Ljava/lang/String;)V

    .line 431
    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    move-object/from16 v16, v2

    .line 435
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 436
    invoke-virtual/range {v16 .. v16}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    return-object v14

    :catchall_1
    move-exception v0

    move-object/from16 v16, v2

    .line 435
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 436
    invoke-virtual/range {v16 .. v16}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    .line 437
    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public query(IJJJJ[Ljava/lang/String;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "startTime",
            "endTime",
            "limit",
            "offset",
            "categoryNameArray"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJJJ[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/persistence/model/Record;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p10

    .line 443
    invoke-static {}, Landroid/arch/persistence/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "select * from record left outer join category on record.record_category_unique_name=category.category_unique_name where record_type == "

    .line 444
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?"

    .line 445
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " and record_time >= "

    .line 446
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " and record_time <= "

    .line 448
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " and category_unique_name in ("

    .line 450
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    array-length v3, v0

    .line 452
    invoke-static {v1, v3}, Landroid/arch/persistence/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    const-string v4, ") order by record_time desc limit "

    .line 453
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " offset "

    .line 455
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v3, 0x5

    .line 459
    invoke-static {v1, v2}, Landroid/arch/persistence/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v1

    move/from16 v4, p1

    int-to-long v4, v4

    const/4 v6, 0x1

    .line 461
    invoke-virtual {v1, v6, v4, v5}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindLong(IJ)V

    const/4 v4, 0x2

    move-wide/from16 v5, p2

    .line 463
    invoke-virtual {v1, v4, v5, v6}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindLong(IJ)V

    const/4 v4, 0x3

    move-wide/from16 v5, p4

    .line 465
    invoke-virtual {v1, v4, v5, v6}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 467
    array-length v4, v0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x4

    :goto_0
    if-ge v6, v4, :cond_1

    aget-object v8, v0, v6

    if-nez v8, :cond_0

    .line 469
    invoke-virtual {v1, v7}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_1

    .line 471
    :cond_0
    invoke-virtual {v1, v7, v8}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_1
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    add-int/2addr v3, v5

    move-wide/from16 v4, p6

    .line 476
    invoke-virtual {v1, v3, v4, v5}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindLong(IJ)V

    move-wide/from16 v3, p8

    .line 478
    invoke-virtual {v1, v2, v3, v4}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindLong(IJ)V

    move-object/from16 v2, p0

    .line 479
    iget-object v0, v2, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0, v1}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v3

    :try_start_0
    const-string v0, "record_id"

    .line 481
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    const-string v4, "record_account_id"

    .line 482
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v5, "record_time"

    .line 483
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v6, "record_amount"

    .line 484
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v7, "record_category_unique_name"

    .line 485
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const-string v8, "record_desc"

    .line 486
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string v9, "record_sync_id"

    .line 487
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const-string v10, "record_sync_status"

    .line 488
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const-string v11, "record_type"

    .line 489
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    const-string v12, "category_name"

    .line 490
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    const-string v13, "category_icon"

    .line 491
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 492
    new-instance v14, Ljava/util/ArrayList;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v15

    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 493
    :goto_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 495
    new-instance v15, Lcom/coderpage/mine/app/tally/persistence/model/Record;

    invoke-direct {v15}, Lcom/coderpage/mine/app/tally/persistence/model/Record;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v1

    .line 497
    :try_start_1
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 498
    invoke-virtual {v15, v1, v2}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setId(J)V

    .line 500
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 501
    invoke-virtual {v15, v1, v2}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setAccountId(J)V

    .line 503
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 504
    invoke-virtual {v15, v1, v2}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setTime(J)V

    .line 506
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v1

    .line 507
    invoke-virtual {v15, v1, v2}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setAmount(D)V

    .line 509
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 510
    invoke-virtual {v15, v1}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setCategoryUniqueName(Ljava/lang/String;)V

    .line 512
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 513
    invoke-virtual {v15, v1}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setDesc(Ljava/lang/String;)V

    .line 515
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 516
    invoke-virtual {v15, v1}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setSyncId(Ljava/lang/String;)V

    .line 518
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 519
    invoke-virtual {v15, v1}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setSyncStatus(I)V

    .line 521
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 522
    invoke-virtual {v15, v1}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setType(I)V

    .line 524
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 525
    invoke-virtual {v15, v1}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setCategoryName(Ljava/lang/String;)V

    .line 527
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 528
    invoke-virtual {v15, v1}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setCategoryIcon(Ljava/lang/String;)V

    .line 529
    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v2, p0

    move-object/from16 v1, v16

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_2
    move-object/from16 v16, v1

    .line 533
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 534
    invoke-virtual/range {v16 .. v16}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    return-object v14

    :catchall_1
    move-exception v0

    move-object/from16 v16, v1

    .line 533
    :goto_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 534
    invoke-virtual/range {v16 .. v16}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    .line 535
    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method public queryAll()Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/persistence/model/Record;",
            ">;"
        }
    .end annotation

    const-string v0, "select * from record left outer join category on record.record_category_unique_name=category.category_unique_name"

    const/4 v1, 0x0

    .line 1137
    invoke-static {v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v1

    move-object/from16 v2, p0

    .line 1138
    iget-object v0, v2, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0, v1}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v3

    :try_start_0
    const-string v0, "record_id"

    .line 1140
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    const-string v4, "record_account_id"

    .line 1141
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v5, "record_time"

    .line 1142
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v6, "record_amount"

    .line 1143
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v7, "record_category_unique_name"

    .line 1144
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const-string v8, "record_desc"

    .line 1145
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string v9, "record_sync_id"

    .line 1146
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const-string v10, "record_sync_status"

    .line 1147
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const-string v11, "record_type"

    .line 1148
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    const-string v12, "category_name"

    .line 1149
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    const-string v13, "category_icon"

    .line 1150
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 1151
    new-instance v14, Ljava/util/ArrayList;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v15

    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 1152
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 1154
    new-instance v15, Lcom/coderpage/mine/app/tally/persistence/model/Record;

    invoke-direct {v15}, Lcom/coderpage/mine/app/tally/persistence/model/Record;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v1

    .line 1156
    :try_start_1
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 1157
    invoke-virtual {v15, v1, v2}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setId(J)V

    .line 1159
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 1160
    invoke-virtual {v15, v1, v2}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setAccountId(J)V

    .line 1162
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 1163
    invoke-virtual {v15, v1, v2}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setTime(J)V

    .line 1165
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v1

    .line 1166
    invoke-virtual {v15, v1, v2}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setAmount(D)V

    .line 1168
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1169
    invoke-virtual {v15, v1}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setCategoryUniqueName(Ljava/lang/String;)V

    .line 1171
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1172
    invoke-virtual {v15, v1}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setDesc(Ljava/lang/String;)V

    .line 1174
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1175
    invoke-virtual {v15, v1}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setSyncId(Ljava/lang/String;)V

    .line 1177
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1178
    invoke-virtual {v15, v1}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setSyncStatus(I)V

    .line 1180
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1181
    invoke-virtual {v15, v1}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setType(I)V

    .line 1183
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1184
    invoke-virtual {v15, v1}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setCategoryName(Ljava/lang/String;)V

    .line 1186
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1187
    invoke-virtual {v15, v1}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setCategoryIcon(Ljava/lang/String;)V

    .line 1188
    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v2, p0

    move-object/from16 v1, v16

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    move-object/from16 v16, v1

    .line 1192
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1193
    invoke-virtual/range {v16 .. v16}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    return-object v14

    :catchall_1
    move-exception v0

    move-object/from16 v16, v1

    .line 1192
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1193
    invoke-virtual/range {v16 .. v16}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    .line 1194
    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public queryAll(JJJJ)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "startTime",
            "endTime",
            "limit",
            "offset"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJJ)",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/persistence/model/Record;",
            ">;"
        }
    .end annotation

    const-string v0, "select * from record left outer join category on record.record_category_unique_name=category.category_unique_name where record_time >= ? and record_time <= ? order by record_time desc limit ? offset ?"

    const/4 v1, 0x4

    .line 541
    invoke-static {v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v2

    const/4 v0, 0x1

    move-wide/from16 v3, p1

    .line 543
    invoke-virtual {v2, v0, v3, v4}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindLong(IJ)V

    const/4 v0, 0x2

    move-wide/from16 v3, p3

    .line 545
    invoke-virtual {v2, v0, v3, v4}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindLong(IJ)V

    const/4 v0, 0x3

    move-wide/from16 v3, p5

    .line 547
    invoke-virtual {v2, v0, v3, v4}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindLong(IJ)V

    move-wide/from16 v3, p7

    .line 549
    invoke-virtual {v2, v1, v3, v4}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindLong(IJ)V

    move-object/from16 v1, p0

    .line 550
    iget-object v0, v1, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0, v2}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v3

    :try_start_0
    const-string v0, "record_id"

    .line 552
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    const-string v4, "record_account_id"

    .line 553
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v5, "record_time"

    .line 554
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v6, "record_amount"

    .line 555
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v7, "record_category_unique_name"

    .line 556
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const-string v8, "record_desc"

    .line 557
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string v9, "record_sync_id"

    .line 558
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const-string v10, "record_sync_status"

    .line 559
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const-string v11, "record_type"

    .line 560
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    const-string v12, "category_name"

    .line 561
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    const-string v13, "category_icon"

    .line 562
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 563
    new-instance v14, Ljava/util/ArrayList;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v15

    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 564
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 566
    new-instance v15, Lcom/coderpage/mine/app/tally/persistence/model/Record;

    invoke-direct {v15}, Lcom/coderpage/mine/app/tally/persistence/model/Record;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v2

    .line 568
    :try_start_1
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 569
    invoke-virtual {v15, v1, v2}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setId(J)V

    .line 571
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 572
    invoke-virtual {v15, v1, v2}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setAccountId(J)V

    .line 574
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 575
    invoke-virtual {v15, v1, v2}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setTime(J)V

    .line 577
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v1

    .line 578
    invoke-virtual {v15, v1, v2}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setAmount(D)V

    .line 580
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 581
    invoke-virtual {v15, v1}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setCategoryUniqueName(Ljava/lang/String;)V

    .line 583
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 584
    invoke-virtual {v15, v1}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setDesc(Ljava/lang/String;)V

    .line 586
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 587
    invoke-virtual {v15, v1}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setSyncId(Ljava/lang/String;)V

    .line 589
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 590
    invoke-virtual {v15, v1}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setSyncStatus(I)V

    .line 592
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 593
    invoke-virtual {v15, v1}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setType(I)V

    .line 595
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 596
    invoke-virtual {v15, v1}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setCategoryName(Ljava/lang/String;)V

    .line 598
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 599
    invoke-virtual {v15, v1}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setCategoryIcon(Ljava/lang/String;)V

    .line 600
    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    move-object/from16 v16, v2

    .line 604
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 605
    invoke-virtual/range {v16 .. v16}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    return-object v14

    :catchall_1
    move-exception v0

    move-object/from16 v16, v2

    .line 604
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 605
    invoke-virtual/range {v16 .. v16}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    .line 606
    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public queryAll(JJJJ[Ljava/lang/String;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "startTime",
            "endTime",
            "limit",
            "offset",
            "categoryNameArray"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJJ[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/persistence/model/Record;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p9

    .line 612
    invoke-static {}, Landroid/arch/persistence/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "select * from record left outer join category on record.record_category_unique_name=category.category_unique_name where record_time >= "

    .line 613
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?"

    .line 614
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " and record_time <= "

    .line 615
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " and category_unique_name in ("

    .line 617
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    array-length v3, v0

    .line 619
    invoke-static {v1, v3}, Landroid/arch/persistence/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    const-string v4, ") order by record_time desc limit "

    .line 620
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " offset "

    .line 622
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v3, 0x4

    .line 626
    invoke-static {v1, v2}, Landroid/arch/persistence/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v1

    const/4 v4, 0x1

    move-wide/from16 v5, p1

    .line 628
    invoke-virtual {v1, v4, v5, v6}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindLong(IJ)V

    const/4 v4, 0x2

    move-wide/from16 v5, p3

    .line 630
    invoke-virtual {v1, v4, v5, v6}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 632
    array-length v4, v0

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x3

    :goto_0
    if-ge v6, v4, :cond_1

    aget-object v8, v0, v6

    if-nez v8, :cond_0

    .line 634
    invoke-virtual {v1, v7}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_1

    .line 636
    :cond_0
    invoke-virtual {v1, v7, v8}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_1
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    add-int/2addr v3, v5

    move-wide/from16 v4, p5

    .line 641
    invoke-virtual {v1, v3, v4, v5}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindLong(IJ)V

    move-wide/from16 v3, p7

    .line 643
    invoke-virtual {v1, v2, v3, v4}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindLong(IJ)V

    move-object/from16 v2, p0

    .line 644
    iget-object v0, v2, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0, v1}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v3

    :try_start_0
    const-string v0, "record_id"

    .line 646
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    const-string v4, "record_account_id"

    .line 647
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v5, "record_time"

    .line 648
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v6, "record_amount"

    .line 649
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v7, "record_category_unique_name"

    .line 650
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const-string v8, "record_desc"

    .line 651
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string v9, "record_sync_id"

    .line 652
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const-string v10, "record_sync_status"

    .line 653
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const-string v11, "record_type"

    .line 654
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    const-string v12, "category_name"

    .line 655
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    const-string v13, "category_icon"

    .line 656
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 657
    new-instance v14, Ljava/util/ArrayList;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v15

    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 658
    :goto_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 660
    new-instance v15, Lcom/coderpage/mine/app/tally/persistence/model/Record;

    invoke-direct {v15}, Lcom/coderpage/mine/app/tally/persistence/model/Record;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v1

    .line 662
    :try_start_1
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 663
    invoke-virtual {v15, v1, v2}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setId(J)V

    .line 665
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 666
    invoke-virtual {v15, v1, v2}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setAccountId(J)V

    .line 668
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 669
    invoke-virtual {v15, v1, v2}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setTime(J)V

    .line 671
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v1

    .line 672
    invoke-virtual {v15, v1, v2}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setAmount(D)V

    .line 674
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 675
    invoke-virtual {v15, v1}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setCategoryUniqueName(Ljava/lang/String;)V

    .line 677
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 678
    invoke-virtual {v15, v1}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setDesc(Ljava/lang/String;)V

    .line 680
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 681
    invoke-virtual {v15, v1}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setSyncId(Ljava/lang/String;)V

    .line 683
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 684
    invoke-virtual {v15, v1}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setSyncStatus(I)V

    .line 686
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 687
    invoke-virtual {v15, v1}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setType(I)V

    .line 689
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 690
    invoke-virtual {v15, v1}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setCategoryName(Ljava/lang/String;)V

    .line 692
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 693
    invoke-virtual {v15, v1}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setCategoryIcon(Ljava/lang/String;)V

    .line 694
    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v2, p0

    move-object/from16 v1, v16

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_2
    move-object/from16 v16, v1

    .line 698
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 699
    invoke-virtual/range {v16 .. v16}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    return-object v14

    :catchall_1
    move-exception v0

    move-object/from16 v16, v1

    .line 698
    :goto_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 699
    invoke-virtual/range {v16 .. v16}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    .line 700
    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method public queryById(J)Lcom/coderpage/mine/app/tally/persistence/model/Record;
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    const-string v0, "select * from record left outer join category on record.record_category_unique_name=category.category_unique_name where record_id = ?"

    const/4 v1, 0x1

    .line 226
    invoke-static {v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v2

    move-wide/from16 v3, p1

    .line 228
    invoke-virtual {v2, v1, v3, v4}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindLong(IJ)V

    move-object v1, p0

    .line 229
    iget-object v0, v1, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0, v2}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v3

    :try_start_0
    const-string v0, "record_id"

    .line 231
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    const-string v4, "record_account_id"

    .line 232
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v5, "record_time"

    .line 233
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v6, "record_amount"

    .line 234
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v7, "record_category_unique_name"

    .line 235
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const-string v8, "record_desc"

    .line 236
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string v9, "record_sync_id"

    .line 237
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const-string v10, "record_sync_status"

    .line 238
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const-string v11, "record_type"

    .line 239
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    const-string v12, "category_name"

    .line 240
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    const-string v13, "category_icon"

    .line 241
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 243
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 244
    new-instance v14, Lcom/coderpage/mine/app/tally/persistence/model/Record;

    invoke-direct {v14}, Lcom/coderpage/mine/app/tally/persistence/model/Record;-><init>()V

    .line 246
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 247
    invoke-virtual {v14, v0, v1}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setId(J)V

    .line 249
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 250
    invoke-virtual {v14, v0, v1}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setAccountId(J)V

    .line 252
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 253
    invoke-virtual {v14, v0, v1}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setTime(J)V

    .line 255
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    .line 256
    invoke-virtual {v14, v0, v1}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setAmount(D)V

    .line 258
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 259
    invoke-virtual {v14, v0}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setCategoryUniqueName(Ljava/lang/String;)V

    .line 261
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 262
    invoke-virtual {v14, v0}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setDesc(Ljava/lang/String;)V

    .line 264
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 265
    invoke-virtual {v14, v0}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setSyncId(Ljava/lang/String;)V

    .line 267
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 268
    invoke-virtual {v14, v0}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setSyncStatus(I)V

    .line 270
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 271
    invoke-virtual {v14, v0}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setType(I)V

    .line 273
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 274
    invoke-virtual {v14, v0}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setCategoryName(Ljava/lang/String;)V

    .line 276
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 277
    invoke-virtual {v14, v0}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setCategoryIcon(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v14, 0x0

    .line 283
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 284
    invoke-virtual {v2}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    return-object v14

    :catchall_0
    move-exception v0

    .line 283
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 284
    invoke-virtual {v2}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    .line 285
    throw v0
.end method

.method public queryByKeyWord(Ljava/lang/String;JJ)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "keyWord",
            "limit",
            "offset"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ)",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/persistence/model/Record;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "select * from record left outer join category on record.record_category_unique_name=category.category_unique_name where category_name like ? or record_desc like ? order by record_time desc limit ? offset ?"

    const/4 v2, 0x4

    .line 291
    invoke-static {v1, v2}, Landroid/arch/persistence/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v1

    const/4 v3, 0x1

    if-nez v0, :cond_0

    .line 294
    invoke-virtual {v1, v3}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 296
    :cond_0
    invoke-virtual {v1, v3, v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_0
    const/4 v3, 0x2

    if-nez v0, :cond_1

    .line 300
    invoke-virtual {v1, v3}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_1

    .line 302
    :cond_1
    invoke-virtual {v1, v3, v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_1
    const/4 v0, 0x3

    move-wide/from16 v3, p2

    .line 305
    invoke-virtual {v1, v0, v3, v4}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindLong(IJ)V

    move-wide/from16 v3, p4

    .line 307
    invoke-virtual {v1, v2, v3, v4}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindLong(IJ)V

    move-object/from16 v2, p0

    .line 308
    iget-object v0, v2, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0, v1}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v3

    :try_start_0
    const-string v0, "record_id"

    .line 310
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    const-string v4, "record_account_id"

    .line 311
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v5, "record_time"

    .line 312
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v6, "record_amount"

    .line 313
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v7, "record_category_unique_name"

    .line 314
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const-string v8, "record_desc"

    .line 315
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string v9, "record_sync_id"

    .line 316
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const-string v10, "record_sync_status"

    .line 317
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const-string v11, "record_type"

    .line 318
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    const-string v12, "category_name"

    .line 319
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    const-string v13, "category_icon"

    .line 320
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 321
    new-instance v14, Ljava/util/ArrayList;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v15

    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 322
    :goto_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 324
    new-instance v15, Lcom/coderpage/mine/app/tally/persistence/model/Record;

    invoke-direct {v15}, Lcom/coderpage/mine/app/tally/persistence/model/Record;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v1

    .line 326
    :try_start_1
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 327
    invoke-virtual {v15, v1, v2}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setId(J)V

    .line 329
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 330
    invoke-virtual {v15, v1, v2}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setAccountId(J)V

    .line 332
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 333
    invoke-virtual {v15, v1, v2}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setTime(J)V

    .line 335
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v1

    .line 336
    invoke-virtual {v15, v1, v2}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setAmount(D)V

    .line 338
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 339
    invoke-virtual {v15, v1}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setCategoryUniqueName(Ljava/lang/String;)V

    .line 341
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 342
    invoke-virtual {v15, v1}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setDesc(Ljava/lang/String;)V

    .line 344
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 345
    invoke-virtual {v15, v1}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setSyncId(Ljava/lang/String;)V

    .line 347
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 348
    invoke-virtual {v15, v1}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setSyncStatus(I)V

    .line 350
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 351
    invoke-virtual {v15, v1}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setType(I)V

    .line 353
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 354
    invoke-virtual {v15, v1}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setCategoryName(Ljava/lang/String;)V

    .line 356
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 357
    invoke-virtual {v15, v1}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setCategoryIcon(Ljava/lang/String;)V

    .line 358
    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v2, p0

    move-object/from16 v1, v16

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_2
    move-object/from16 v16, v1

    .line 362
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 363
    invoke-virtual/range {v16 .. v16}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    return-object v14

    :catchall_1
    move-exception v0

    move-object/from16 v16, v1

    .line 362
    :goto_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 363
    invoke-virtual/range {v16 .. v16}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    .line 364
    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method public queryCountOfCategory(Ljava/lang/String;)Lcom/coderpage/mine/app/tally/persistence/model/Count;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "categoryUuid"
        }
    .end annotation

    const-string v0, "select count(*) from record where record.record_category_unique_name=?"

    const/4 v1, 0x1

    .line 1200
    invoke-static {v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v0

    if-nez p1, :cond_0

    .line 1203
    invoke-virtual {v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 1205
    :cond_0
    invoke-virtual {v0, v1, p1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 1207
    :goto_0
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p1, v0}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    const-string v1, "count(*)"

    .line 1209
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 1211
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1212
    new-instance v2, Lcom/coderpage/mine/app/tally/persistence/model/Count;

    invoke-direct {v2}, Lcom/coderpage/mine/app/tally/persistence/model/Count;-><init>()V

    .line 1213
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/coderpage/mine/app/tally/persistence/model/Count;->count:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 1219
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1220
    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    return-object v2

    :catchall_0
    move-exception v1

    .line 1219
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1220
    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    .line 1221
    throw v1
.end method

.method public queryExpenseBetweenTimeTimeDesc(JJ)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "start",
            "end"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/persistence/model/Record;",
            ">;"
        }
    .end annotation

    const-string v0, "select * from record left outer join category on record.record_category_unique_name=category.category_unique_name where record_time >= ? and record_time<= ? and record_type = 0 order by record_time DESC"

    const/4 v1, 0x2

    .line 706
    invoke-static {v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v2

    const/4 v0, 0x1

    move-wide/from16 v3, p1

    .line 708
    invoke-virtual {v2, v0, v3, v4}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindLong(IJ)V

    move-wide/from16 v3, p3

    .line 710
    invoke-virtual {v2, v1, v3, v4}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindLong(IJ)V

    move-object/from16 v1, p0

    .line 711
    iget-object v0, v1, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0, v2}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v3

    :try_start_0
    const-string v0, "record_id"

    .line 713
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    const-string v4, "record_account_id"

    .line 714
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v5, "record_time"

    .line 715
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v6, "record_amount"

    .line 716
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v7, "record_category_unique_name"

    .line 717
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const-string v8, "record_desc"

    .line 718
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string v9, "record_sync_id"

    .line 719
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const-string v10, "record_sync_status"

    .line 720
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const-string v11, "record_type"

    .line 721
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    const-string v12, "category_name"

    .line 722
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    const-string v13, "category_icon"

    .line 723
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 724
    new-instance v14, Ljava/util/ArrayList;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v15

    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 725
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 727
    new-instance v15, Lcom/coderpage/mine/app/tally/persistence/model/Record;

    invoke-direct {v15}, Lcom/coderpage/mine/app/tally/persistence/model/Record;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v2

    .line 729
    :try_start_1
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 730
    invoke-virtual {v15, v1, v2}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setId(J)V

    .line 732
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 733
    invoke-virtual {v15, v1, v2}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setAccountId(J)V

    .line 735
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 736
    invoke-virtual {v15, v1, v2}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setTime(J)V

    .line 738
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v1

    .line 739
    invoke-virtual {v15, v1, v2}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setAmount(D)V

    .line 741
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 742
    invoke-virtual {v15, v1}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setCategoryUniqueName(Ljava/lang/String;)V

    .line 744
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 745
    invoke-virtual {v15, v1}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setDesc(Ljava/lang/String;)V

    .line 747
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 748
    invoke-virtual {v15, v1}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setSyncId(Ljava/lang/String;)V

    .line 750
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 751
    invoke-virtual {v15, v1}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setSyncStatus(I)V

    .line 753
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 754
    invoke-virtual {v15, v1}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setType(I)V

    .line 756
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 757
    invoke-virtual {v15, v1}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setCategoryName(Ljava/lang/String;)V

    .line 759
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 760
    invoke-virtual {v15, v1}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setCategoryIcon(Ljava/lang/String;)V

    .line 761
    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    move-object/from16 v16, v2

    .line 765
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 766
    invoke-virtual/range {v16 .. v16}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    return-object v14

    :catchall_1
    move-exception v0

    move-object/from16 v16, v2

    .line 765
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 766
    invoke-virtual/range {v16 .. v16}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    .line 767
    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public queryExpenseCategoryGroup(JJ)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "start",
            "end"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/persistence/model/RecordCategoryGroup;",
            ">;"
        }
    .end annotation

    const-string v0, "select category.category_type,category.category_id,count(*),sum(record_amount),record_time,category_unique_name,category_name,category_icon from record left outer join category on record.record_category_unique_name=category.category_unique_name where record_time >= ? and record_time<= ? and record_type = 0 group by category.category_id order by sum(record_amount) ASC"

    const/4 v1, 0x2

    .line 980
    invoke-static {v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v0

    const/4 v2, 0x1

    .line 982
    invoke-virtual {v0, v2, p1, p2}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 984
    invoke-virtual {v0, v1, p3, p4}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 985
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p1, v0}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    const-string p2, "category_type"

    .line 987
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    const-string p3, "category_id"

    .line 988
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p3

    const-string p4, "count(*)"

    .line 989
    invoke-interface {p1, p4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p4

    const-string v1, "sum(record_amount)"

    .line 990
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    const-string v2, "category_unique_name"

    .line 991
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    const-string v3, "category_name"

    .line 992
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    const-string v4, "category_icon"

    .line 993
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 994
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 995
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 997
    new-instance v6, Lcom/coderpage/mine/app/tally/persistence/model/RecordCategoryGroup;

    invoke-direct {v6}, Lcom/coderpage/mine/app/tally/persistence/model/RecordCategoryGroup;-><init>()V

    .line 999
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1000
    invoke-virtual {v6, v7}, Lcom/coderpage/mine/app/tally/persistence/model/RecordCategoryGroup;->setType(I)V

    .line 1002
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1003
    invoke-virtual {v6, v7, v8}, Lcom/coderpage/mine/app/tally/persistence/model/RecordCategoryGroup;->setCategoryId(J)V

    .line 1005
    invoke-interface {p1, p4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1006
    invoke-virtual {v6, v7, v8}, Lcom/coderpage/mine/app/tally/persistence/model/RecordCategoryGroup;->setCount(J)V

    .line 1008
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v7

    .line 1009
    invoke-virtual {v6, v7, v8}, Lcom/coderpage/mine/app/tally/persistence/model/RecordCategoryGroup;->setAmount(D)V

    .line 1011
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1012
    invoke-virtual {v6, v7}, Lcom/coderpage/mine/app/tally/persistence/model/RecordCategoryGroup;->setUniqueName(Ljava/lang/String;)V

    .line 1014
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1015
    invoke-virtual {v6, v7}, Lcom/coderpage/mine/app/tally/persistence/model/RecordCategoryGroup;->setName(Ljava/lang/String;)V

    .line 1017
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1018
    invoke-virtual {v6, v7}, Lcom/coderpage/mine/app/tally/persistence/model/RecordCategoryGroup;->setIcon(Ljava/lang/String;)V

    .line 1019
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1023
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1024
    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    return-object v5

    :catchall_0
    move-exception p2

    .line 1023
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1024
    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    .line 1025
    goto :goto_2

    :goto_1
    throw p2

    :goto_2
    goto :goto_1
.end method

.method public queryExpenseDailyGroup(JJ)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "start",
            "end"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/persistence/model/RecordGroup;",
            ">;"
        }
    .end annotation

    const-string v0, "select count(*),sum(record_amount),record_time from record where record_time >= ? and record_time<= ? and record_type = 0 group by strftime(\'%Y-%m-%d\', datetime(record_time/1000, \'unixepoch\', \'localtime\')) order by record_time ASC"

    const/4 v1, 0x2

    .line 910
    invoke-static {v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v0

    const/4 v2, 0x1

    .line 912
    invoke-virtual {v0, v2, p1, p2}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 914
    invoke-virtual {v0, v1, p3, p4}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 915
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p1, v0}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    const-string p2, "count(*)"

    .line 917
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    const-string p3, "sum(record_amount)"

    .line 918
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p3

    const-string p4, "record_time"

    .line 919
    invoke-interface {p1, p4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p4

    .line 920
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 921
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 923
    new-instance v2, Lcom/coderpage/mine/app/tally/persistence/model/RecordGroup;

    invoke-direct {v2}, Lcom/coderpage/mine/app/tally/persistence/model/RecordGroup;-><init>()V

    .line 925
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 926
    invoke-virtual {v2, v3, v4}, Lcom/coderpage/mine/app/tally/persistence/model/RecordGroup;->setCount(J)V

    .line 928
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getFloat(I)F

    move-result v3

    .line 929
    invoke-virtual {v2, v3}, Lcom/coderpage/mine/app/tally/persistence/model/RecordGroup;->setAmount(F)V

    .line 931
    invoke-interface {p1, p4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 932
    invoke-virtual {v2, v3, v4}, Lcom/coderpage/mine/app/tally/persistence/model/RecordGroup;->setTime(J)V

    .line 933
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 937
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 938
    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    return-object v1

    :catchall_0
    move-exception p2

    .line 937
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 938
    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    .line 939
    goto :goto_2

    :goto_1
    throw p2

    :goto_2
    goto :goto_1
.end method

.method public queryExpenseMonthGroup(JJ)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "start",
            "end"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/persistence/model/RecordGroup;",
            ">;"
        }
    .end annotation

    const-string v0, "select count(*),sum(record_amount),record_time from record where record_time >= ? and record_time<= ? and record_type = 0 group by strftime(\'%Y-%m\', datetime(record_time/1000, \'unixepoch\', \'localtime\')) order by record_time ASC"

    const/4 v1, 0x2

    .line 840
    invoke-static {v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v0

    const/4 v2, 0x1

    .line 842
    invoke-virtual {v0, v2, p1, p2}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 844
    invoke-virtual {v0, v1, p3, p4}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 845
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p1, v0}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    const-string p2, "count(*)"

    .line 847
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    const-string p3, "sum(record_amount)"

    .line 848
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p3

    const-string p4, "record_time"

    .line 849
    invoke-interface {p1, p4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p4

    .line 850
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 851
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 853
    new-instance v2, Lcom/coderpage/mine/app/tally/persistence/model/RecordGroup;

    invoke-direct {v2}, Lcom/coderpage/mine/app/tally/persistence/model/RecordGroup;-><init>()V

    .line 855
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 856
    invoke-virtual {v2, v3, v4}, Lcom/coderpage/mine/app/tally/persistence/model/RecordGroup;->setCount(J)V

    .line 858
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getFloat(I)F

    move-result v3

    .line 859
    invoke-virtual {v2, v3}, Lcom/coderpage/mine/app/tally/persistence/model/RecordGroup;->setAmount(F)V

    .line 861
    invoke-interface {p1, p4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 862
    invoke-virtual {v2, v3, v4}, Lcom/coderpage/mine/app/tally/persistence/model/RecordGroup;->setTime(J)V

    .line 863
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 867
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 868
    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    return-object v1

    :catchall_0
    move-exception p2

    .line 867
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 868
    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    .line 869
    goto :goto_2

    :goto_1
    throw p2

    :goto_2
    goto :goto_1
.end method

.method public queryFirst()Lcom/coderpage/mine/app/tally/persistence/model/Record;
    .locals 14

    const-string v0, "select * from record order by record_time ASC limit 1"

    const/4 v1, 0x0

    .line 1082
    invoke-static {v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v0

    .line 1083
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v1, v0}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_0
    const-string v2, "record_id"

    .line 1085
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    const-string v3, "record_account_id"

    .line 1086
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    const-string v4, "record_time"

    .line 1087
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v5, "record_amount"

    .line 1088
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v6, "record_category_unique_name"

    .line 1089
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v7, "record_desc"

    .line 1090
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const-string v8, "record_sync_id"

    .line 1091
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string v9, "record_sync_status"

    .line 1092
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const-string v10, "record_type"

    .line 1093
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 1095
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1096
    new-instance v11, Lcom/coderpage/mine/app/tally/persistence/model/Record;

    invoke-direct {v11}, Lcom/coderpage/mine/app/tally/persistence/model/Record;-><init>()V

    .line 1098
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 1099
    invoke-virtual {v11, v12, v13}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setId(J)V

    .line 1101
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1102
    invoke-virtual {v11, v2, v3}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setAccountId(J)V

    .line 1104
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1105
    invoke-virtual {v11, v2, v3}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setTime(J)V

    .line 1107
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    .line 1108
    invoke-virtual {v11, v2, v3}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setAmount(D)V

    .line 1110
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1111
    invoke-virtual {v11, v2}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setCategoryUniqueName(Ljava/lang/String;)V

    .line 1113
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1114
    invoke-virtual {v11, v2}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setDesc(Ljava/lang/String;)V

    .line 1116
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1117
    invoke-virtual {v11, v2}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setSyncId(Ljava/lang/String;)V

    .line 1119
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1120
    invoke-virtual {v11, v2}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setSyncStatus(I)V

    .line 1122
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1123
    invoke-virtual {v11, v2}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setType(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    .line 1129
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1130
    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    return-object v11

    :catchall_0
    move-exception v2

    .line 1129
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1130
    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    .line 1131
    throw v2
.end method

.method public queryIncomeBetweenTimeTimeDesc(JJ)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "start",
            "end"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/persistence/model/Record;",
            ">;"
        }
    .end annotation

    const-string v0, "select * from record left outer join category on record.record_category_unique_name=category.category_unique_name where record_time >= ? and record_time<= ? and record_type = 1 order by record_time DESC"

    const/4 v1, 0x2

    .line 773
    invoke-static {v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v2

    const/4 v0, 0x1

    move-wide/from16 v3, p1

    .line 775
    invoke-virtual {v2, v0, v3, v4}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindLong(IJ)V

    move-wide/from16 v3, p3

    .line 777
    invoke-virtual {v2, v1, v3, v4}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindLong(IJ)V

    move-object/from16 v1, p0

    .line 778
    iget-object v0, v1, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0, v2}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v3

    :try_start_0
    const-string v0, "record_id"

    .line 780
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    const-string v4, "record_account_id"

    .line 781
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v5, "record_time"

    .line 782
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v6, "record_amount"

    .line 783
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v7, "record_category_unique_name"

    .line 784
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const-string v8, "record_desc"

    .line 785
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string v9, "record_sync_id"

    .line 786
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const-string v10, "record_sync_status"

    .line 787
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const-string v11, "record_type"

    .line 788
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    const-string v12, "category_name"

    .line 789
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    const-string v13, "category_icon"

    .line 790
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 791
    new-instance v14, Ljava/util/ArrayList;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v15

    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 792
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 794
    new-instance v15, Lcom/coderpage/mine/app/tally/persistence/model/Record;

    invoke-direct {v15}, Lcom/coderpage/mine/app/tally/persistence/model/Record;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v2

    .line 796
    :try_start_1
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 797
    invoke-virtual {v15, v1, v2}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setId(J)V

    .line 799
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 800
    invoke-virtual {v15, v1, v2}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setAccountId(J)V

    .line 802
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 803
    invoke-virtual {v15, v1, v2}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setTime(J)V

    .line 805
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v1

    .line 806
    invoke-virtual {v15, v1, v2}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setAmount(D)V

    .line 808
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 809
    invoke-virtual {v15, v1}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setCategoryUniqueName(Ljava/lang/String;)V

    .line 811
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 812
    invoke-virtual {v15, v1}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setDesc(Ljava/lang/String;)V

    .line 814
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 815
    invoke-virtual {v15, v1}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setSyncId(Ljava/lang/String;)V

    .line 817
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 818
    invoke-virtual {v15, v1}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setSyncStatus(I)V

    .line 820
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 821
    invoke-virtual {v15, v1}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setType(I)V

    .line 823
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 824
    invoke-virtual {v15, v1}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setCategoryName(Ljava/lang/String;)V

    .line 826
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 827
    invoke-virtual {v15, v1}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->setCategoryIcon(Ljava/lang/String;)V

    .line 828
    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    move-object/from16 v16, v2

    .line 832
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 833
    invoke-virtual/range {v16 .. v16}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    return-object v14

    :catchall_1
    move-exception v0

    move-object/from16 v16, v2

    .line 832
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 833
    invoke-virtual/range {v16 .. v16}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    .line 834
    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public queryIncomeCategoryGroup(JJ)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "start",
            "end"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/persistence/model/RecordCategoryGroup;",
            ">;"
        }
    .end annotation

    const-string v0, "select category.category_type,category.category_id,count(*),sum(record_amount),record_time,category_unique_name,category_name,category_icon from record left outer join category on record.record_category_unique_name=category.category_unique_name where record_time >= ? and record_time<= ? and record_type = 1 group by category.category_id order by sum(record_amount) ASC"

    const/4 v1, 0x2

    .line 1031
    invoke-static {v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v0

    const/4 v2, 0x1

    .line 1033
    invoke-virtual {v0, v2, p1, p2}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 1035
    invoke-virtual {v0, v1, p3, p4}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 1036
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p1, v0}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    const-string p2, "category_type"

    .line 1038
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    const-string p3, "category_id"

    .line 1039
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p3

    const-string p4, "count(*)"

    .line 1040
    invoke-interface {p1, p4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p4

    const-string v1, "sum(record_amount)"

    .line 1041
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    const-string v2, "category_unique_name"

    .line 1042
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    const-string v3, "category_name"

    .line 1043
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    const-string v4, "category_icon"

    .line 1044
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 1045
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1046
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1048
    new-instance v6, Lcom/coderpage/mine/app/tally/persistence/model/RecordCategoryGroup;

    invoke-direct {v6}, Lcom/coderpage/mine/app/tally/persistence/model/RecordCategoryGroup;-><init>()V

    .line 1050
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1051
    invoke-virtual {v6, v7}, Lcom/coderpage/mine/app/tally/persistence/model/RecordCategoryGroup;->setType(I)V

    .line 1053
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1054
    invoke-virtual {v6, v7, v8}, Lcom/coderpage/mine/app/tally/persistence/model/RecordCategoryGroup;->setCategoryId(J)V

    .line 1056
    invoke-interface {p1, p4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1057
    invoke-virtual {v6, v7, v8}, Lcom/coderpage/mine/app/tally/persistence/model/RecordCategoryGroup;->setCount(J)V

    .line 1059
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v7

    .line 1060
    invoke-virtual {v6, v7, v8}, Lcom/coderpage/mine/app/tally/persistence/model/RecordCategoryGroup;->setAmount(D)V

    .line 1062
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1063
    invoke-virtual {v6, v7}, Lcom/coderpage/mine/app/tally/persistence/model/RecordCategoryGroup;->setUniqueName(Ljava/lang/String;)V

    .line 1065
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1066
    invoke-virtual {v6, v7}, Lcom/coderpage/mine/app/tally/persistence/model/RecordCategoryGroup;->setName(Ljava/lang/String;)V

    .line 1068
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1069
    invoke-virtual {v6, v7}, Lcom/coderpage/mine/app/tally/persistence/model/RecordCategoryGroup;->setIcon(Ljava/lang/String;)V

    .line 1070
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1074
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1075
    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    return-object v5

    :catchall_0
    move-exception p2

    .line 1074
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1075
    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    .line 1076
    goto :goto_2

    :goto_1
    throw p2

    :goto_2
    goto :goto_1
.end method

.method public queryIncomeDailyGroup(JJ)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "start",
            "end"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/persistence/model/RecordGroup;",
            ">;"
        }
    .end annotation

    const-string v0, "select count(*),sum(record_amount),record_time from record where record_time >= ? and record_time<= ? and record_type = 1 group by strftime(\'%Y-%m-%d\', datetime(record_time/1000, \'unixepoch\', \'localtime\')) order by record_time ASC"

    const/4 v1, 0x2

    .line 945
    invoke-static {v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v0

    const/4 v2, 0x1

    .line 947
    invoke-virtual {v0, v2, p1, p2}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 949
    invoke-virtual {v0, v1, p3, p4}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 950
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p1, v0}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    const-string p2, "count(*)"

    .line 952
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    const-string p3, "sum(record_amount)"

    .line 953
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p3

    const-string p4, "record_time"

    .line 954
    invoke-interface {p1, p4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p4

    .line 955
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 956
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 958
    new-instance v2, Lcom/coderpage/mine/app/tally/persistence/model/RecordGroup;

    invoke-direct {v2}, Lcom/coderpage/mine/app/tally/persistence/model/RecordGroup;-><init>()V

    .line 960
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 961
    invoke-virtual {v2, v3, v4}, Lcom/coderpage/mine/app/tally/persistence/model/RecordGroup;->setCount(J)V

    .line 963
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getFloat(I)F

    move-result v3

    .line 964
    invoke-virtual {v2, v3}, Lcom/coderpage/mine/app/tally/persistence/model/RecordGroup;->setAmount(F)V

    .line 966
    invoke-interface {p1, p4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 967
    invoke-virtual {v2, v3, v4}, Lcom/coderpage/mine/app/tally/persistence/model/RecordGroup;->setTime(J)V

    .line 968
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 972
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 973
    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    return-object v1

    :catchall_0
    move-exception p2

    .line 972
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 973
    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    .line 974
    goto :goto_2

    :goto_1
    throw p2

    :goto_2
    goto :goto_1
.end method

.method public queryIncomeMonthGroup(JJ)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "start",
            "end"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/persistence/model/RecordGroup;",
            ">;"
        }
    .end annotation

    const-string v0, "select count(*),sum(record_amount),record_time from record where record_time >= ? and record_time<= ? and record_type = 1 group by strftime(\'%Y-%m\', datetime(record_time/1000, \'unixepoch\', \'localtime\')) order by record_time ASC"

    const/4 v1, 0x2

    .line 875
    invoke-static {v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v0

    const/4 v2, 0x1

    .line 877
    invoke-virtual {v0, v2, p1, p2}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 879
    invoke-virtual {v0, v1, p3, p4}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 880
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p1, v0}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    const-string p2, "count(*)"

    .line 882
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    const-string p3, "sum(record_amount)"

    .line 883
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p3

    const-string p4, "record_time"

    .line 884
    invoke-interface {p1, p4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p4

    .line 885
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 886
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 888
    new-instance v2, Lcom/coderpage/mine/app/tally/persistence/model/RecordGroup;

    invoke-direct {v2}, Lcom/coderpage/mine/app/tally/persistence/model/RecordGroup;-><init>()V

    .line 890
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 891
    invoke-virtual {v2, v3, v4}, Lcom/coderpage/mine/app/tally/persistence/model/RecordGroup;->setCount(J)V

    .line 893
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getFloat(I)F

    move-result v3

    .line 894
    invoke-virtual {v2, v3}, Lcom/coderpage/mine/app/tally/persistence/model/RecordGroup;->setAmount(F)V

    .line 896
    invoke-interface {p1, p4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 897
    invoke-virtual {v2, v3, v4}, Lcom/coderpage/mine/app/tally/persistence/model/RecordGroup;->setTime(J)V

    .line 898
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 902
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 903
    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    return-object v1

    :catchall_0
    move-exception p2

    .line 902
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 903
    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    .line 904
    goto :goto_2

    :goto_1
    throw p2

    :goto_2
    goto :goto_1
.end method

.method public update(Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "record"
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    .line 196
    :try_start_0
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao_Impl;->__updateAdapterOfRecordEntity:Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 p1, p1, 0x0

    .line 197
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 201
    throw p1
.end method
