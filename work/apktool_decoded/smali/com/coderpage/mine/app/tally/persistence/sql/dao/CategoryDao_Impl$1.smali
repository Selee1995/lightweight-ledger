.class Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao_Impl$1;
.super Landroid/arch/persistence/room/EntityInsertionAdapter;
.source "CategoryDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao_Impl;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/arch/persistence/room/EntityInsertionAdapter<",
        "Lcom/coderpage/mine/app/tally/persistence/sql/entity/CategoryEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao_Impl;


# direct methods
.method constructor <init>(Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "database"
        }
    .end annotation

    .line 31
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao_Impl$1;->this$0:Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao_Impl;

    invoke-direct {p0, p2}, Landroid/arch/persistence/room/EntityInsertionAdapter;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Lcom/coderpage/mine/app/tally/persistence/sql/entity/CategoryEntity;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "stmt",
            "value"
        }
    .end annotation

    .line 39
    invoke-virtual {p2}, Lcom/coderpage/mine/app/tally/persistence/sql/entity/CategoryEntity;->getId()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 40
    invoke-virtual {p2}, Lcom/coderpage/mine/app/tally/persistence/sql/entity/CategoryEntity;->getUniqueName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 41
    invoke-interface {p1, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {p2}, Lcom/coderpage/mine/app/tally/persistence/sql/entity/CategoryEntity;->getUniqueName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 45
    :goto_0
    invoke-virtual {p2}, Lcom/coderpage/mine/app/tally/persistence/sql/entity/CategoryEntity;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 46
    invoke-interface {p1, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 48
    :cond_1
    invoke-virtual {p2}, Lcom/coderpage/mine/app/tally/persistence/sql/entity/CategoryEntity;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 50
    :goto_1
    invoke-virtual {p2}, Lcom/coderpage/mine/app/tally/persistence/sql/entity/CategoryEntity;->getIcon()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_2

    .line 51
    invoke-interface {p1, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 53
    :cond_2
    invoke-virtual {p2}, Lcom/coderpage/mine/app/tally/persistence/sql/entity/CategoryEntity;->getIcon()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_2
    const/4 v0, 0x5

    .line 55
    invoke-virtual {p2}, Lcom/coderpage/mine/app/tally/persistence/sql/entity/CategoryEntity;->getOrder()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/4 v0, 0x6

    .line 56
    invoke-virtual {p2}, Lcom/coderpage/mine/app/tally/persistence/sql/entity/CategoryEntity;->getType()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/4 v0, 0x7

    .line 57
    invoke-virtual {p2}, Lcom/coderpage/mine/app/tally/persistence/sql/entity/CategoryEntity;->getAccountId()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x8

    .line 58
    invoke-virtual {p2}, Lcom/coderpage/mine/app/tally/persistence/sql/entity/CategoryEntity;->getSyncStatus()I

    move-result p2

    int-to-long v1, p2

    invoke-interface {p1, v0, v1, v2}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method public bridge synthetic bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "stmt",
            "value"
        }
    .end annotation

    .line 31
    check-cast p2, Lcom/coderpage/mine/app/tally/persistence/sql/entity/CategoryEntity;

    invoke-virtual {p0, p1, p2}, Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao_Impl$1;->bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Lcom/coderpage/mine/app/tally/persistence/sql/entity/CategoryEntity;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR IGNORE INTO `category`(`category_id`,`category_unique_name`,`category_name`,`category_icon`,`category_order`,`category_type`,`category_account_id`,`category_sync_status`) VALUES (nullif(?, 0),?,?,?,?,?,?,?)"

    return-object v0
.end method
