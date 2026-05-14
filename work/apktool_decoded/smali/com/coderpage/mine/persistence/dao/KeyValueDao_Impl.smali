.class public Lcom/coderpage/mine/persistence/dao/KeyValueDao_Impl;
.super Ljava/lang/Object;
.source "KeyValueDao_Impl.java"

# interfaces
.implements Lcom/coderpage/mine/persistence/dao/KeyValueDao;


# instance fields
.field private final __db:Landroid/arch/persistence/room/RoomDatabase;

.field private final __insertionAdapterOfKeyValue:Landroid/arch/persistence/room/EntityInsertionAdapter;

.field private final __preparedStmtOfDelete:Landroid/arch/persistence/room/SharedSQLiteStatement;

.field private final __updateAdapterOfKeyValue:Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;


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

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/coderpage/mine/persistence/dao/KeyValueDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    .line 27
    new-instance v0, Lcom/coderpage/mine/persistence/dao/KeyValueDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/coderpage/mine/persistence/dao/KeyValueDao_Impl$1;-><init>(Lcom/coderpage/mine/persistence/dao/KeyValueDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/coderpage/mine/persistence/dao/KeyValueDao_Impl;->__insertionAdapterOfKeyValue:Landroid/arch/persistence/room/EntityInsertionAdapter;

    .line 47
    new-instance v0, Lcom/coderpage/mine/persistence/dao/KeyValueDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/coderpage/mine/persistence/dao/KeyValueDao_Impl$2;-><init>(Lcom/coderpage/mine/persistence/dao/KeyValueDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/coderpage/mine/persistence/dao/KeyValueDao_Impl;->__updateAdapterOfKeyValue:Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;

    .line 72
    new-instance v0, Lcom/coderpage/mine/persistence/dao/KeyValueDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/coderpage/mine/persistence/dao/KeyValueDao_Impl$3;-><init>(Lcom/coderpage/mine/persistence/dao/KeyValueDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/coderpage/mine/persistence/dao/KeyValueDao_Impl;->__preparedStmtOfDelete:Landroid/arch/persistence/room/SharedSQLiteStatement;

    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/coderpage/mine/persistence/dao/KeyValueDao_Impl;->__preparedStmtOfDelete:Landroid/arch/persistence/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroid/arch/persistence/room/SharedSQLiteStatement;->acquire()Landroid/arch/persistence/db/SupportSQLiteStatement;

    move-result-object v0

    .line 119
    iget-object v1, p0, Lcom/coderpage/mine/persistence/dao/KeyValueDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 123
    :try_start_0
    invoke-interface {v0, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 125
    :cond_0
    invoke-interface {v0, v1, p1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 127
    :goto_0
    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 128
    iget-object p1, p0, Lcom/coderpage/mine/persistence/dao/KeyValueDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p1}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    iget-object p1, p0, Lcom/coderpage/mine/persistence/dao/KeyValueDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p1}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 131
    iget-object p1, p0, Lcom/coderpage/mine/persistence/dao/KeyValueDao_Impl;->__preparedStmtOfDelete:Landroid/arch/persistence/room/SharedSQLiteStatement;

    invoke-virtual {p1, v0}, Landroid/arch/persistence/room/SharedSQLiteStatement;->release(Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    .line 130
    iget-object v1, p0, Lcom/coderpage/mine/persistence/dao/KeyValueDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 131
    iget-object v1, p0, Lcom/coderpage/mine/persistence/dao/KeyValueDao_Impl;->__preparedStmtOfDelete:Landroid/arch/persistence/room/SharedSQLiteStatement;

    invoke-virtual {v1, v0}, Landroid/arch/persistence/room/SharedSQLiteStatement;->release(Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    .line 132
    throw p1
.end method

.method public insert(Lcom/coderpage/mine/persistence/entity/KeyValue;)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyValue"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/coderpage/mine/persistence/dao/KeyValueDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/coderpage/mine/persistence/dao/KeyValueDao_Impl;->__insertionAdapterOfKeyValue:Landroid/arch/persistence/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/EntityInsertionAdapter;->insertAndReturnId(Ljava/lang/Object;)J

    move-result-wide v0

    .line 98
    iget-object p1, p0, Lcom/coderpage/mine/persistence/dao/KeyValueDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p1}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    iget-object p1, p0, Lcom/coderpage/mine/persistence/dao/KeyValueDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p1}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    return-wide v0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/coderpage/mine/persistence/dao/KeyValueDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 102
    throw p1
.end method

.method public varargs insert([Lcom/coderpage/mine/persistence/entity/KeyValue;)[J
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyValues"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/coderpage/mine/persistence/dao/KeyValueDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/coderpage/mine/persistence/dao/KeyValueDao_Impl;->__insertionAdapterOfKeyValue:Landroid/arch/persistence/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/EntityInsertionAdapter;->insertAndReturnIdsArray([Ljava/lang/Object;)[J

    move-result-object p1

    .line 86
    iget-object v0, p0, Lcom/coderpage/mine/persistence/dao/KeyValueDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    iget-object v0, p0, Lcom/coderpage/mine/persistence/dao/KeyValueDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/coderpage/mine/persistence/dao/KeyValueDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 90
    throw p1
.end method

.method public query(Ljava/lang/String;)Lcom/coderpage/mine/persistence/entity/KeyValue;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    const-string v0, "select * from key_value where `key` = ? limit 1"

    const/4 v1, 0x1

    .line 138
    invoke-static {v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v0

    if-nez p1, :cond_0

    .line 141
    invoke-virtual {v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 143
    :cond_0
    invoke-virtual {v0, v1, p1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 145
    :goto_0
    iget-object p1, p0, Lcom/coderpage/mine/persistence/dao/KeyValueDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p1, v0}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    const-string v1, "key"

    .line 147
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    const-string v2, "value"

    .line 148
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 150
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 152
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 154
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 155
    new-instance v3, Lcom/coderpage/mine/persistence/entity/KeyValue;

    invoke-direct {v3, v1, v2}, Lcom/coderpage/mine/persistence/entity/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 161
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 162
    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    return-object v3

    :catchall_0
    move-exception v1

    .line 161
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 162
    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    .line 163
    throw v1
.end method

.method public update(Lcom/coderpage/mine/persistence/entity/KeyValue;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyValue"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/coderpage/mine/persistence/dao/KeyValueDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/coderpage/mine/persistence/dao/KeyValueDao_Impl;->__updateAdapterOfKeyValue:Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    .line 110
    iget-object p1, p0, Lcom/coderpage/mine/persistence/dao/KeyValueDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p1}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    iget-object p1, p0, Lcom/coderpage/mine/persistence/dao/KeyValueDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p1}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/coderpage/mine/persistence/dao/KeyValueDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 113
    throw p1
.end method
