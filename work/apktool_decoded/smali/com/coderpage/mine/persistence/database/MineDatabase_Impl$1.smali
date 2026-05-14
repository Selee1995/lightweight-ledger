.class Lcom/coderpage/mine/persistence/database/MineDatabase_Impl$1;
.super Landroid/arch/persistence/room/RoomOpenHelper$Delegate;
.source "MineDatabase_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coderpage/mine/persistence/database/MineDatabase_Impl;->createOpenHelper(Landroid/arch/persistence/room/DatabaseConfiguration;)Landroid/arch/persistence/db/SupportSQLiteOpenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coderpage/mine/persistence/database/MineDatabase_Impl;


# direct methods
.method constructor <init>(Lcom/coderpage/mine/persistence/database/MineDatabase_Impl;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "version"
        }
    .end annotation

    .line 31
    iput-object p1, p0, Lcom/coderpage/mine/persistence/database/MineDatabase_Impl$1;->this$0:Lcom/coderpage/mine/persistence/database/MineDatabase_Impl;

    invoke-direct {p0, p2}, Landroid/arch/persistence/room/RoomOpenHelper$Delegate;-><init>(I)V

    return-void
.end method


# virtual methods
.method public createAllTables(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "_db"
        }
    .end annotation

    const-string v0, "CREATE TABLE IF NOT EXISTS `key_value` (`key` TEXT NOT NULL, `value` TEXT, PRIMARY KEY(`key`))"

    .line 34
    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE  INDEX `index_key_value_key` ON `key_value` (`key`)"

    .line 35
    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    .line 36
    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \"e7db2ba079b7311bebba971a5cc69e61\")"

    .line 37
    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public dropAllTables(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "_db"
        }
    .end annotation

    const-string v0, "DROP TABLE IF EXISTS `key_value`"

    .line 42
    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "_db"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/coderpage/mine/persistence/database/MineDatabase_Impl$1;->this$0:Lcom/coderpage/mine/persistence/database/MineDatabase_Impl;

    invoke-static {v0}, Lcom/coderpage/mine/persistence/database/MineDatabase_Impl;->access$000(Lcom/coderpage/mine/persistence/database/MineDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 48
    iget-object v1, p0, Lcom/coderpage/mine/persistence/database/MineDatabase_Impl$1;->this$0:Lcom/coderpage/mine/persistence/database/MineDatabase_Impl;

    invoke-static {v1}, Lcom/coderpage/mine/persistence/database/MineDatabase_Impl;->access$100(Lcom/coderpage/mine/persistence/database/MineDatabase_Impl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 49
    iget-object v2, p0, Lcom/coderpage/mine/persistence/database/MineDatabase_Impl$1;->this$0:Lcom/coderpage/mine/persistence/database/MineDatabase_Impl;

    invoke-static {v2}, Lcom/coderpage/mine/persistence/database/MineDatabase_Impl;->access$200(Lcom/coderpage/mine/persistence/database/MineDatabase_Impl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/arch/persistence/room/RoomDatabase$Callback;

    invoke-virtual {v2, p1}, Landroid/arch/persistence/room/RoomDatabase$Callback;->onCreate(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onOpen(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "_db"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/coderpage/mine/persistence/database/MineDatabase_Impl$1;->this$0:Lcom/coderpage/mine/persistence/database/MineDatabase_Impl;

    invoke-static {v0, p1}, Lcom/coderpage/mine/persistence/database/MineDatabase_Impl;->access$302(Lcom/coderpage/mine/persistence/database/MineDatabase_Impl;Landroid/arch/persistence/db/SupportSQLiteDatabase;)Landroid/arch/persistence/db/SupportSQLiteDatabase;

    .line 57
    iget-object v0, p0, Lcom/coderpage/mine/persistence/database/MineDatabase_Impl$1;->this$0:Lcom/coderpage/mine/persistence/database/MineDatabase_Impl;

    invoke-static {v0, p1}, Lcom/coderpage/mine/persistence/database/MineDatabase_Impl;->access$400(Lcom/coderpage/mine/persistence/database/MineDatabase_Impl;Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    .line 58
    iget-object v0, p0, Lcom/coderpage/mine/persistence/database/MineDatabase_Impl$1;->this$0:Lcom/coderpage/mine/persistence/database/MineDatabase_Impl;

    invoke-static {v0}, Lcom/coderpage/mine/persistence/database/MineDatabase_Impl;->access$500(Lcom/coderpage/mine/persistence/database/MineDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 59
    iget-object v1, p0, Lcom/coderpage/mine/persistence/database/MineDatabase_Impl$1;->this$0:Lcom/coderpage/mine/persistence/database/MineDatabase_Impl;

    invoke-static {v1}, Lcom/coderpage/mine/persistence/database/MineDatabase_Impl;->access$600(Lcom/coderpage/mine/persistence/database/MineDatabase_Impl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 60
    iget-object v2, p0, Lcom/coderpage/mine/persistence/database/MineDatabase_Impl$1;->this$0:Lcom/coderpage/mine/persistence/database/MineDatabase_Impl;

    invoke-static {v2}, Lcom/coderpage/mine/persistence/database/MineDatabase_Impl;->access$700(Lcom/coderpage/mine/persistence/database/MineDatabase_Impl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/arch/persistence/room/RoomDatabase$Callback;

    invoke-virtual {v2, p1}, Landroid/arch/persistence/room/RoomDatabase$Callback;->onOpen(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected validateMigration(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "_db"
        }
    .end annotation

    .line 67
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 68
    new-instance v1, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v2, "key"

    const-string v3, "TEXT"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4, v4}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    new-instance v1, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v5, "value"

    const/4 v6, 0x0

    invoke-direct {v1, v5, v3, v6, v6}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v6}, Ljava/util/HashSet;-><init>(I)V

    .line 71
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 72
    new-instance v5, Landroid/arch/persistence/room/util/TableInfo$Index;

    new-array v4, v4, [Ljava/lang/String;

    aput-object v2, v4, v6

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v4, "index_key_value_key"

    invoke-direct {v5, v4, v6, v2}, Landroid/arch/persistence/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 73
    new-instance v2, Landroid/arch/persistence/room/util/TableInfo;

    const-string v4, "key_value"

    invoke-direct {v2, v4, v0, v1, v3}, Landroid/arch/persistence/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 74
    invoke-static {p1, v4}, Landroid/arch/persistence/room/util/TableInfo;->read(Landroid/arch/persistence/db/SupportSQLiteDatabase;Ljava/lang/String;)Landroid/arch/persistence/room/util/TableInfo;

    move-result-object p1

    .line 75
    invoke-virtual {v2, p1}, Landroid/arch/persistence/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 76
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Migration didn\'t properly handle key_value(com.coderpage.mine.persistence.entity.KeyValue).\n Expected:\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n Found:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
