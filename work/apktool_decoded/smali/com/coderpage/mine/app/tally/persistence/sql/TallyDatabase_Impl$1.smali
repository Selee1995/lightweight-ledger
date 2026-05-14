.class Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase_Impl$1;
.super Landroid/arch/persistence/room/RoomOpenHelper$Delegate;
.source "TallyDatabase_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase_Impl;->createOpenHelper(Landroid/arch/persistence/room/DatabaseConfiguration;)Landroid/arch/persistence/db/SupportSQLiteOpenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase_Impl;


# direct methods
.method constructor <init>(Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase_Impl;I)V
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

    .line 35
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase_Impl$1;->this$0:Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase_Impl;

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

    const-string v0, "CREATE TABLE IF NOT EXISTS `record` (`record_id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `record_account_id` INTEGER NOT NULL, `record_time` INTEGER NOT NULL, `record_amount` REAL NOT NULL, `record_category_unique_name` TEXT, `record_desc` TEXT NOT NULL, `record_sync_id` TEXT NOT NULL, `record_sync_status` INTEGER NOT NULL, `record_delete` INTEGER NOT NULL, `record_type` INTEGER NOT NULL)"

    .line 38
    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE UNIQUE INDEX `index_record_record_sync_id` ON `record` (`record_sync_id`)"

    .line 39
    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `category` (`category_id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `category_unique_name` TEXT NOT NULL, `category_name` TEXT, `category_icon` TEXT NOT NULL, `category_order` INTEGER NOT NULL, `category_type` INTEGER NOT NULL, `category_account_id` INTEGER NOT NULL, `category_sync_status` INTEGER NOT NULL)"

    .line 40
    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE UNIQUE INDEX `index_category_category_unique_name` ON `category` (`category_unique_name`)"

    .line 41
    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    .line 42
    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \"5e20539a927282f78f4d9eb0ed37b488\")"

    .line 43
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

    const-string v0, "DROP TABLE IF EXISTS `record`"

    .line 48
    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS `category`"

    .line 49
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

    .line 54
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase_Impl$1;->this$0:Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase_Impl;

    invoke-static {v0}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase_Impl;->access$000(Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 55
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase_Impl$1;->this$0:Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase_Impl;

    invoke-static {v1}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase_Impl;->access$100(Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase_Impl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 56
    iget-object v2, p0, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase_Impl$1;->this$0:Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase_Impl;

    invoke-static {v2}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase_Impl;->access$200(Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase_Impl;)Ljava/util/List;

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

    .line 63
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase_Impl$1;->this$0:Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase_Impl;

    invoke-static {v0, p1}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase_Impl;->access$302(Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase_Impl;Landroid/arch/persistence/db/SupportSQLiteDatabase;)Landroid/arch/persistence/db/SupportSQLiteDatabase;

    .line 64
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase_Impl$1;->this$0:Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase_Impl;

    invoke-static {v0, p1}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase_Impl;->access$400(Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase_Impl;Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    .line 65
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase_Impl$1;->this$0:Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase_Impl;

    invoke-static {v0}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase_Impl;->access$500(Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 66
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase_Impl$1;->this$0:Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase_Impl;

    invoke-static {v1}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase_Impl;->access$600(Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase_Impl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 67
    iget-object v2, p0, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase_Impl$1;->this$0:Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase_Impl;

    invoke-static {v2}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase_Impl;->access$700(Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase_Impl;)Ljava/util/List;

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
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "_db"
        }
    .end annotation

    .line 74
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 75
    new-instance v1, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v2, "record_id"

    const-string v3, "INTEGER"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4, v4}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    new-instance v1, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v2, "record_account_id"

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    new-instance v1, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v2, "record_time"

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    new-instance v1, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v2, "record_amount"

    const-string v6, "REAL"

    invoke-direct {v1, v2, v6, v4, v5}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    new-instance v1, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v2, "record_category_unique_name"

    const-string v6, "TEXT"

    invoke-direct {v1, v2, v6, v5, v5}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    new-instance v1, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v2, "record_desc"

    invoke-direct {v1, v2, v6, v4, v5}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    new-instance v1, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v2, "record_sync_id"

    invoke-direct {v1, v2, v6, v4, v5}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    new-instance v1, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v7, "record_sync_status"

    invoke-direct {v1, v7, v3, v4, v5}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    new-instance v1, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v7, "record_delete"

    invoke-direct {v1, v7, v3, v4, v5}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    new-instance v1, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v7, "record_type"

    invoke-direct {v1, v7, v3, v4, v5}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 86
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 87
    new-instance v8, Landroid/arch/persistence/room/util/TableInfo$Index;

    new-array v9, v4, [Ljava/lang/String;

    aput-object v2, v9, v5

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v9, "index_record_record_sync_id"

    invoke-direct {v8, v9, v4, v2}, Landroid/arch/persistence/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 88
    new-instance v2, Landroid/arch/persistence/room/util/TableInfo;

    const-string v8, "record"

    invoke-direct {v2, v8, v0, v1, v7}, Landroid/arch/persistence/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 89
    invoke-static {p1, v8}, Landroid/arch/persistence/room/util/TableInfo;->read(Landroid/arch/persistence/db/SupportSQLiteDatabase;Ljava/lang/String;)Landroid/arch/persistence/room/util/TableInfo;

    move-result-object v0

    .line 90
    invoke-virtual {v2, v0}, Landroid/arch/persistence/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 96
    new-instance v1, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v2, "category_id"

    invoke-direct {v1, v2, v3, v4, v4}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    new-instance v1, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v2, "category_unique_name"

    invoke-direct {v1, v2, v6, v4, v5}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    new-instance v1, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v7, "category_name"

    invoke-direct {v1, v7, v6, v5, v5}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    new-instance v1, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v7, "category_icon"

    invoke-direct {v1, v7, v6, v4, v5}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    new-instance v1, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v6, "category_order"

    invoke-direct {v1, v6, v3, v4, v5}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    new-instance v1, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v6, "category_type"

    invoke-direct {v1, v6, v3, v4, v5}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    new-instance v1, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v6, "category_account_id"

    invoke-direct {v1, v6, v3, v4, v5}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    new-instance v1, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v6, "category_sync_status"

    invoke-direct {v1, v6, v3, v4, v5}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v3, "category_sync_status"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 105
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 106
    new-instance v6, Landroid/arch/persistence/room/util/TableInfo$Index;

    new-array v7, v4, [Ljava/lang/String;

    aput-object v2, v7, v5

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v5, "index_category_category_unique_name"

    invoke-direct {v6, v5, v4, v2}, Landroid/arch/persistence/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 107
    new-instance v2, Landroid/arch/persistence/room/util/TableInfo;

    const-string v4, "category"

    invoke-direct {v2, v4, v0, v1, v3}, Landroid/arch/persistence/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    const-string v0, "category"

    .line 108
    invoke-static {p1, v0}, Landroid/arch/persistence/room/util/TableInfo;->read(Landroid/arch/persistence/db/SupportSQLiteDatabase;Ljava/lang/String;)Landroid/arch/persistence/room/util/TableInfo;

    move-result-object p1

    .line 109
    invoke-virtual {v2, p1}, Landroid/arch/persistence/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 110
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Migration didn\'t properly handle category(com.coderpage.mine.app.tally.persistence.sql.entity.CategoryEntity).\n Expected:\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n Found:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Migration didn\'t properly handle record(com.coderpage.mine.app.tally.persistence.sql.entity.RecordEntity).\n Expected:\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n Found:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
