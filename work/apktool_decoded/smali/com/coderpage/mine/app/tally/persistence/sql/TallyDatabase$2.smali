.class Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase$2;
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

    .line 131
    invoke-direct {p0, p1, p2}, Landroid/arch/persistence/room/migration/Migration;-><init>(II)V

    return-void
.end method


# virtual methods
.method public migrate(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "database"
        }
    .end annotation

    const-string v0, "CREATE TABLE expense1 (expense_id INTEGER PRIMARY KEY AUTOINCREMENT,category_id INTEGER NOT NULL,expense_category TEXT NOT NULL,expense_amount DOUBLE NOT NULL,expense_desc TEXT NOT NULL DEFAULT \'\',expense_time DOUBLE NOT NULL,expense_account_id INTEGER NOT NULL DEFAULT 0,expense_sync_id TEXT NOT NULL,expense_synced INTEGER NOT NULL DEFAULT 0,UNIQUE (expense_sync_id) ON CONFLICT IGNORE)"

    .line 134
    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE category1 (category_id INTEGER PRIMARY KEY AUTOINCREMENT,category_name TEXT NOT NULL,category_icon TEXT,category_order INTEGER NOT NULL DEFAULT(0),UNIQUE (category_name) ON CONFLICT IGNORE)"

    .line 147
    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INSERT INTO expense1 (expense_id,category_id,expense_category,expense_amount,expense_desc,expense_time,expense_sync_id) SELECT expense_id,category_id,expense_category,expense_amount,expense_desc,expense_time,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "hex( randomblob(4)) || \'-\' || hex( randomblob(2))|| \'-\' || \'4\' || substr( hex( randomblob(2)), 2) || \'-\' || substr(\'AB89\', 1 + (abs(random()) % 4) , 1)  || substr(hex(randomblob(2)), 2) || \'-\' || hex(randomblob(6))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " FROM expense"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "INSERT INTO category1 SELECT *  FROM category"

    .line 180
    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE expense"

    .line 182
    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE category"

    .line 183
    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE expense1 RENAME TO expense"

    .line 184
    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE category1 RENAME TO category"

    .line 185
    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
