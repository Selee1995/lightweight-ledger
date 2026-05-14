.class Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao_Impl$3;
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

    .line 103
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao_Impl$3;->this$0:Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao_Impl;

    invoke-direct {p0, p2}, Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;)V
    .locals 2
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

    .line 111
    invoke-virtual {p2}, Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;->getId()J

    move-result-wide v0

    const/4 p2, 0x1

    invoke-interface {p1, p2, v0, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

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

    .line 103
    check-cast p2, Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;

    invoke-virtual {p0, p1, p2}, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao_Impl$3;->bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Lcom/coderpage/mine/app/tally/persistence/sql/entity/RecordEntity;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE FROM `record` WHERE `record_id` = ?"

    return-object v0
.end method
