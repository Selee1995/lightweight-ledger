.class Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao_Impl$4;
.super Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;
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
        "Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter<",
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

    .line 114
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao_Impl$4;->this$0:Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao_Impl;

    invoke-direct {p0, p2}, Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V

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

    .line 122
    invoke-virtual {p2}, Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;->getId()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 123
    invoke-virtual {p2}, Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;->getAccountId()J

    move-result-wide v0

    const/4 v2, 0x2

    invoke-interface {p1, v2, v0, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 124
    invoke-virtual {p2}, Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;->getTime()J

    move-result-wide v0

    const/4 v2, 0x3

    invoke-interface {p1, v2, v0, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 125
    invoke-virtual {p2}, Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;->getAmount()D

    move-result-wide v0

    const/4 v2, 0x4

    invoke-interface {p1, v2, v0, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindDouble(ID)V

    .line 126
    invoke-virtual {p2}, Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;->getCategoryUniqueName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_0

    .line 127
    invoke-interface {p1, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 129
    :cond_0
    invoke-virtual {p2}, Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;->getCategoryUniqueName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 131
    :goto_0
    invoke-virtual {p2}, Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;->getDesc()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    if-nez v0, :cond_1

    .line 132
    invoke-interface {p1, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 134
    :cond_1
    invoke-virtual {p2}, Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;->getDesc()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 136
    :goto_1
    invoke-virtual {p2}, Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;->getSyncId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    if-nez v0, :cond_2

    .line 137
    invoke-interface {p1, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 139
    :cond_2
    invoke-virtual {p2}, Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;->getSyncId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_2
    const/16 v0, 0x8

    .line 141
    invoke-virtual {p2}, Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;->getSyncStatus()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x9

    .line 142
    invoke-virtual {p2}, Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;->getDelete()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0xa

    .line 143
    invoke-virtual {p2}, Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;->getType()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0xb

    .line 144
    invoke-virtual {p2}, Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;->getId()J

    move-result-wide v1

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

    .line 114
    check-cast p2, Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;

    invoke-virtual {p0, p1, p2}, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao_Impl$4;->bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE OR ABORT `record` SET `record_id` = ?,`record_account_id` = ?,`record_time` = ?,`record_amount` = ?,`record_category_unique_name` = ?,`record_desc` = ?,`record_sync_id` = ?,`record_sync_status` = ?,`record_delete` = ?,`record_type` = ? WHERE `record_id` = ?"

    return-object v0
.end method
