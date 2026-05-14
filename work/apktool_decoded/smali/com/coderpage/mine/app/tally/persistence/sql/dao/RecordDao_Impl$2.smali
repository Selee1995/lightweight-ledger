.class Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao_Impl$2;
.super Landroid/arch/persistence/room/EntityInsertionAdapter;
.source "RecordDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao_Impl;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/arch/persistence/room/EntityInsertionAdapter<",
        "Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao_Impl;


# direct methods
.method constructor <init>(Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V
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

    .line 71
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao_Impl$2;->this$0:Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao_Impl;

    invoke-direct {p0, p2}, Landroid/arch/persistence/room/EntityInsertionAdapter;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;)V
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

    .line 79
    invoke-virtual {p2}, Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;->getId()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 80
    invoke-virtual {p2}, Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;->getAccountId()J

    move-result-wide v0

    const/4 v2, 0x2

    invoke-interface {p1, v2, v0, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 81
    invoke-virtual {p2}, Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;->getTime()J

    move-result-wide v0

    const/4 v2, 0x3

    invoke-interface {p1, v2, v0, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 82
    invoke-virtual {p2}, Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;->getAmount()D

    move-result-wide v0

    const/4 v2, 0x4

    invoke-interface {p1, v2, v0, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindDouble(ID)V

    .line 83
    invoke-virtual {p2}, Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;->getCategoryUniqueName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_0

    .line 84
    invoke-interface {p1, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {p2}, Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;->getCategoryUniqueName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 88
    :goto_0
    invoke-virtual {p2}, Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;->getDesc()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    if-nez v0, :cond_1

    .line 89
    invoke-interface {p1, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 91
    :cond_1
    invoke-virtual {p2}, Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;->getDesc()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 93
    :goto_1
    invoke-virtual {p2}, Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;->getSyncId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    if-nez v0, :cond_2

    .line 94
    invoke-interface {p1, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 96
    :cond_2
    invoke-virtual {p2}, Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;->getSyncId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_2
    const/16 v0, 0x8

    .line 98
    invoke-virtual {p2}, Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;->getSyncStatus()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x9

    .line 99
    invoke-virtual {p2}, Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;->getDelete()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0xa

    .line 100
    invoke-virtual {p2}, Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;->getType()I

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

    .line 71
    check-cast p2, Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;

    invoke-virtual {p0, p1, p2}, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao_Impl$2;->bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR IGNORE INTO `record`(`record_id`,`record_account_id`,`record_time`,`record_amount`,`record_category_unique_name`,`record_desc`,`record_sync_id`,`record_sync_status`,`record_delete`,`record_type`) VALUES (nullif(?, 0),?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method
