.class public Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase_Impl;
.super Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;
.source "TallyDatabase_Impl.java"


# instance fields
.field private volatile _categoryDao:Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao;

.field private volatile _recordDao:Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$302(Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase_Impl;Landroid/arch/persistence/db/SupportSQLiteDatabase;)Landroid/arch/persistence/db/SupportSQLiteDatabase;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase_Impl;->mDatabase:Landroid/arch/persistence/db/SupportSQLiteDatabase;

    return-object p1
.end method

.method static synthetic access$400(Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase_Impl;Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase_Impl;->internalInitInvalidationTracker(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    return-void
.end method

.method static synthetic access$500(Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$600(Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$700(Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public categoryDao()Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase_Impl;->_categoryDao:Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase_Impl;->_categoryDao:Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao;

    return-object v0

    .line 166
    :cond_0
    monitor-enter p0

    .line 167
    :try_start_0
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase_Impl;->_categoryDao:Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao;

    if-nez v0, :cond_1

    .line 168
    new-instance v0, Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao_Impl;

    invoke-direct {v0, p0}, Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao_Impl;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase_Impl;->_categoryDao:Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao;

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase_Impl;->_categoryDao:Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 171
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearAllTables()V
    .locals 4

    const-string v0, "VACUUM"

    const-string v1, "PRAGMA wal_checkpoint(FULL)"

    .line 131
    invoke-super {p0}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->assertNotMainThread()V

    .line 132
    invoke-super {p0}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->getOpenHelper()Landroid/arch/persistence/db/SupportSQLiteOpenHelper;

    move-result-object v2

    invoke-interface {v2}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroid/arch/persistence/db/SupportSQLiteDatabase;

    move-result-object v2

    .line 134
    :try_start_0
    invoke-super {p0}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->beginTransaction()V

    const-string v3, "DELETE FROM `record`"

    .line 135
    invoke-interface {v2, v3}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `category`"

    .line 136
    invoke-interface {v2, v3}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 137
    invoke-super {p0}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    invoke-super {p0}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->endTransaction()V

    .line 140
    invoke-interface {v2, v1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 141
    invoke-interface {v2}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v1

    if-nez v1, :cond_0

    .line 142
    invoke-interface {v2, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v3

    .line 139
    invoke-super {p0}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->endTransaction()V

    .line 140
    invoke-interface {v2, v1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 141
    invoke-interface {v2}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v1

    if-nez v1, :cond_1

    .line 142
    invoke-interface {v2, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 144
    :cond_1
    throw v3
.end method

.method protected createInvalidationTracker()Landroid/arch/persistence/room/InvalidationTracker;
    .locals 4

    .line 126
    new-instance v0, Landroid/arch/persistence/room/InvalidationTracker;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "record"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "category"

    aput-object v3, v1, v2

    invoke-direct {v0, p0, v1}, Landroid/arch/persistence/room/InvalidationTracker;-><init>(Landroid/arch/persistence/room/RoomDatabase;[Ljava/lang/String;)V

    return-object v0
.end method

.method protected createOpenHelper(Landroid/arch/persistence/room/DatabaseConfiguration;)Landroid/arch/persistence/db/SupportSQLiteOpenHelper;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "configuration"
        }
    .end annotation

    .line 35
    new-instance v0, Landroid/arch/persistence/room/RoomOpenHelper;

    new-instance v1, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase_Impl$1;

    const/16 v2, 0x3c

    invoke-direct {v1, p0, v2}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase_Impl$1;-><init>(Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase_Impl;I)V

    const-string v2, "5e20539a927282f78f4d9eb0ed37b488"

    const-string v3, "b55f1319593cf6f2411a3c8d849dec90"

    invoke-direct {v0, p1, v1, v2, v3}, Landroid/arch/persistence/room/RoomOpenHelper;-><init>(Landroid/arch/persistence/room/DatabaseConfiguration;Landroid/arch/persistence/room/RoomOpenHelper$Delegate;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v1, p1, Landroid/arch/persistence/room/DatabaseConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration;->builder(Landroid/content/Context;)Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    iget-object v2, p1, Landroid/arch/persistence/room/DatabaseConfiguration;->name:Ljava/lang/String;

    .line 117
    invoke-virtual {v1, v2}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;->name(Ljava/lang/String;)Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    .line 118
    invoke-virtual {v1, v0}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;->callback(Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;)Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;->build()Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration;

    move-result-object v0

    .line 120
    iget-object p1, p1, Landroid/arch/persistence/room/DatabaseConfiguration;->sqliteOpenHelperFactory:Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Factory;

    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Factory;->create(Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration;)Landroid/arch/persistence/db/SupportSQLiteOpenHelper;

    move-result-object p1

    return-object p1
.end method

.method public recordDao()Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase_Impl;->_recordDao:Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase_Impl;->_recordDao:Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao;

    return-object v0

    .line 152
    :cond_0
    monitor-enter p0

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase_Impl;->_recordDao:Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao;

    if-nez v0, :cond_1

    .line 154
    new-instance v0, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao_Impl;

    invoke-direct {v0, p0}, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao_Impl;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase_Impl;->_recordDao:Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao;

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase_Impl;->_recordDao:Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 157
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
