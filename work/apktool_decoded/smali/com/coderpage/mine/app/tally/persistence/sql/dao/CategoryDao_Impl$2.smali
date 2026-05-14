.class Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao_Impl$2;
.super Landroid/arch/persistence/room/SharedSQLiteStatement;
.source "CategoryDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao_Impl;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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

    .line 61
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao_Impl$2;->this$0:Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao_Impl;

    invoke-direct {p0, p2}, Landroid/arch/persistence/room/SharedSQLiteStatement;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "delete from category where category_unique_name=?"

    return-object v0
.end method
