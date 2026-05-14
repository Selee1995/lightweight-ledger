.class Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase$3;
.super Landroid/arch/persistence/room/migration/Migration;
.source "TallyDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "startVersion",
            "endVersion"
        }
    .end annotation

    .line 189
    invoke-direct {p0, p1, p2}, Landroid/arch/persistence/room/migration/Migration;-><init>(II)V

    return-void
.end method


# virtual methods
.method public migrate(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "database"
        }
    .end annotation

    const-string v0, "ALTER TABLE expense RENAME TO expense040"

    .line 194
    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE category RENAME TO category040"

    .line 195
    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE record (record_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,record_category_unique_name TEXT,record_amount REAL NOT NULL,record_desc TEXT NOT NULL DEFAULT \'\',record_time INTEGER NOT NULL,record_account_id INTEGER NOT NULL DEFAULT 0,record_sync_id TEXT NOT NULL,record_sync_status INTEGER NOT NULL DEFAULT 0,record_delete INTEGER NOT NULL DEFAULT 0,record_type INTEGER NOT NULL DEFAULT 0,UNIQUE (record_sync_id) ON CONFLICT IGNORE)"

    .line 198
    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE category (category_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,category_unique_name TEXT NOT NULL,category_name TEXT,category_icon TEXT NOT NULL,category_order INTEGER NOT NULL DEFAULT(0),category_type INTEGER NOT NULL DEFAULT(0),category_account_id INTEGER NOT NULL DEFAULT(0),category_sync_status INTEGER NOT NULL DEFAULT(0),UNIQUE (category_unique_name) ON CONFLICT IGNORE)"

    .line 214
    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE UNIQUE INDEX index_record_record_sync_id on record(record_sync_id)"

    .line 225
    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE UNIQUE INDEX index_category_category_unique_name on category(category_unique_name)"

    .line 226
    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "INSERT INTO record (record_id,record_category_unique_name,record_amount,record_desc,record_time,record_account_id,record_sync_id,record_sync_status,record_delete,record_type) SELECT expense_id,category_icon,expense_amount,expense_desc,expense_time,expense_account_id,expense_sync_id,expense_synced,0,0 FROM expense040 LEFT OUTER JOIN category040 ON expense040.category_id=category040.category_id"

    .line 229
    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "INSERT INTO category (category_id,category_name,category_unique_name,category_icon,category_order) SELECT category_id,category_name,category_icon,category_icon,category_order FROM category040"

    .line 235
    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 240
    invoke-static {}, Lcom/coderpage/mine/MineApp;->getAppContext()Lcom/coderpage/mine/MineApp;

    move-result-object v0

    .line 241
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const v2, 0x7f0e0106

    .line 242
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "OtherIncome"

    const-string v4, "Other"

    invoke-static {v3, v2, v4}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->access$100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase$CategoryItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0x7f0e0103

    .line 243
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "XinZi"

    invoke-static {v3, v2, v3}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->access$100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase$CategoryItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0x7f0e0102

    .line 244
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "JiangJin"

    invoke-static {v3, v2, v3}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->access$100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase$CategoryItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0x7f0e0101

    .line 245
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "JieRu"

    invoke-static {v3, v2, v3}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->access$100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase$CategoryItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0x7f0e00fd

    .line 246
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ShouZhai"

    invoke-static {v3, v2, v3}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->access$100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase$CategoryItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0x7f0e00fe

    .line 247
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "LiXiShouRu"

    const-string v4, "LixiShouRu"

    invoke-static {v3, v2, v4}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->access$100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase$CategoryItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0x7f0e0100

    .line 248
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "TouZiHuiShou"

    invoke-static {v3, v2, v3}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->access$100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase$CategoryItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0x7f0e00ff

    .line 249
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "TouZiShouYi"

    invoke-static {v3, v2, v3}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->access$100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase$CategoryItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0x7f0e0104

    .line 250
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "YiWaiSuoDe"

    invoke-static {v2, v0, v2}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->access$100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase$CategoryItem;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    invoke-interface {p1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->beginTransaction()V

    .line 253
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase$CategoryItem;

    .line 254
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 255
    invoke-static {v1}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase$CategoryItem;->access$200(Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase$CategoryItem;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "category_unique_name"

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-static {v1}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase$CategoryItem;->access$300(Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase$CategoryItem;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "category_name"

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    invoke-static {v1}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase$CategoryItem;->access$400(Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase$CategoryItem;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "category_icon"

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-static {v1}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase$CategoryItem;->access$500(Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase$CategoryItem;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "category_type"

    invoke-virtual {v2, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "category"

    .line 259
    invoke-interface {p1, v1, v3, v2}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->insert(Ljava/lang/String;ILandroid/content/ContentValues;)J

    goto :goto_0

    .line 261
    :cond_0
    invoke-interface {p1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->setTransactionSuccessful()V

    .line 262
    invoke-interface {p1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->endTransaction()V

    return-void
.end method
