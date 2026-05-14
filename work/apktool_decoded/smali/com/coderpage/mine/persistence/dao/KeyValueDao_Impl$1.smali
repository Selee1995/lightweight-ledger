.class Lcom/coderpage/mine/persistence/dao/KeyValueDao_Impl$1;
.super Landroid/arch/persistence/room/EntityInsertionAdapter;
.source "KeyValueDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coderpage/mine/persistence/dao/KeyValueDao_Impl;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/arch/persistence/room/EntityInsertionAdapter<",
        "Lcom/coderpage/mine/persistence/entity/KeyValue;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coderpage/mine/persistence/dao/KeyValueDao_Impl;


# direct methods
.method constructor <init>(Lcom/coderpage/mine/persistence/dao/KeyValueDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V
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

    .line 27
    iput-object p1, p0, Lcom/coderpage/mine/persistence/dao/KeyValueDao_Impl$1;->this$0:Lcom/coderpage/mine/persistence/dao/KeyValueDao_Impl;

    invoke-direct {p0, p2}, Landroid/arch/persistence/room/EntityInsertionAdapter;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Lcom/coderpage/mine/persistence/entity/KeyValue;)V
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

    .line 35
    invoke-virtual {p2}, Lcom/coderpage/mine/persistence/entity/KeyValue;->getKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 36
    invoke-interface {p1, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {p2}, Lcom/coderpage/mine/persistence/entity/KeyValue;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 40
    :goto_0
    invoke-virtual {p2}, Lcom/coderpage/mine/persistence/entity/KeyValue;->getValue()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 41
    invoke-interface {p1, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 43
    :cond_1
    invoke-virtual {p2}, Lcom/coderpage/mine/persistence/entity/KeyValue;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_1
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

    .line 27
    check-cast p2, Lcom/coderpage/mine/persistence/entity/KeyValue;

    invoke-virtual {p0, p1, p2}, Lcom/coderpage/mine/persistence/dao/KeyValueDao_Impl$1;->bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Lcom/coderpage/mine/persistence/entity/KeyValue;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `key_value`(`key`,`value`) VALUES (?,?)"

    return-object v0
.end method
