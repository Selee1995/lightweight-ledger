.class Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase$1;
.super Landroid/arch/persistence/room/RoomDatabase$Callback;
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
.method constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Landroid/arch/persistence/room/RoomDatabase$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "db"
        }
    .end annotation

    .line 79
    invoke-static {}, Lcom/coderpage/mine/MineApp;->getAppContext()Lcom/coderpage/mine/MineApp;

    move-result-object v0

    .line 81
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const v2, 0x7f0e0106

    .line 83
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Other"

    invoke-static {v4, v3, v4}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->access$000(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase$CategoryItem;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v3, 0x7f0e00fa

    .line 84
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "CanYin"

    invoke-static {v5, v3, v5}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->access$000(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase$CategoryItem;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v3, 0x7f0e010c

    .line 85
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "JiaoTong"

    invoke-static {v5, v3, v5}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->access$000(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase$CategoryItem;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v3, 0x7f0e0107

    .line 86
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "GouWu"

    invoke-static {v5, v3, v5}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->access$000(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase$CategoryItem;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v3, 0x7f0e00f6

    .line 87
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "FuShi"

    invoke-static {v5, v3, v5}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->access$000(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase$CategoryItem;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v3, 0x7f0e00f8

    .line 88
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "RiYongPin"

    invoke-static {v5, v3, v5}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->access$000(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase$CategoryItem;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v3, 0x7f0e00f9

    .line 89
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "YuLe"

    invoke-static {v5, v3, v5}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->access$000(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase$CategoryItem;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v3, 0x7f0e00fb

    .line 90
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "ShiCai"

    invoke-static {v5, v3, v5}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->access$000(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase$CategoryItem;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v3, 0x7f0e0108

    .line 91
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "LingShi"

    invoke-static {v5, v3, v5}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->access$000(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase$CategoryItem;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v3, 0x7f0e010b

    .line 92
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "YanJiuCha"

    invoke-static {v5, v3, v5}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->access$000(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase$CategoryItem;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v3, 0x7f0e0109

    .line 93
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "XueXi"

    invoke-static {v5, v3, v5}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->access$000(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase$CategoryItem;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v3, 0x7f0e0105

    .line 94
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "YiLiao"

    invoke-static {v5, v3, v5}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->access$000(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase$CategoryItem;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v3, 0x7f0e00fc

    .line 95
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "ZhuFang"

    invoke-static {v5, v3, v5}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->access$000(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase$CategoryItem;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v3, 0x7f0e010d

    .line 96
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "ShuiDianMei"

    invoke-static {v5, v3, v5}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->access$000(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase$CategoryItem;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v3, 0x7f0e00f7

    .line 97
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "TongXun"

    invoke-static {v5, v3, v5}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->access$000(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase$CategoryItem;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v3, 0x7f0e010a

    .line 98
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "RenQing"

    invoke-static {v5, v3, v5}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->access$000(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase$CategoryItem;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "OtherIncome"

    invoke-static {v3, v2, v4}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->access$100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase$CategoryItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0x7f0e0103

    .line 101
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "XinZi"

    invoke-static {v3, v2, v3}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->access$100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase$CategoryItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0x7f0e0102

    .line 102
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "JiangJin"

    invoke-static {v3, v2, v3}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->access$100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase$CategoryItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0x7f0e0101

    .line 103
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "JieRu"

    invoke-static {v3, v2, v3}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->access$100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase$CategoryItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0x7f0e00fd

    .line 104
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ShouZhai"

    invoke-static {v3, v2, v3}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->access$100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase$CategoryItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0x7f0e00fe

    .line 105
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "LiXiShouRu"

    const-string v4, "LixiShouRu"

    invoke-static {v3, v2, v4}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->access$100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase$CategoryItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0x7f0e0100

    .line 106
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "TouZiHuiShou"

    const-string v4, "TouZiHuiShou"

    invoke-static {v3, v2, v4}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->access$100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase$CategoryItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0x7f0e00ff

    .line 107
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "TouZiShouYi"

    const-string v4, "TouZiShouYi"

    invoke-static {v3, v2, v4}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->access$100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase$CategoryItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0x7f0e0104

    .line 108
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "YiWaiSuoDe"

    const-string v3, "YiWaiSuoDe"

    invoke-static {v2, v0, v3}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->access$100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase$CategoryItem;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    invoke-interface {p1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->beginTransaction()V

    .line 113
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase$CategoryItem;

    .line 114
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 115
    invoke-static {v1}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase$CategoryItem;->access$200(Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase$CategoryItem;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "category_unique_name"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-static {v1}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase$CategoryItem;->access$300(Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase$CategoryItem;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "category_name"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-static {v1}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase$CategoryItem;->access$400(Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase$CategoryItem;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "category_icon"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-static {v1}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase$CategoryItem;->access$500(Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase$CategoryItem;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "category_type"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v3, 0x0

    .line 119
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "category_order"

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 120
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "category_account_id"

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 121
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "category_sync_status"

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "category"

    .line 122
    invoke-interface {p1, v4, v3, v2}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->insert(Ljava/lang/String;ILandroid/content/ContentValues;)J

    move-result-wide v2

    .line 124
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insert expense category. id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " name:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase$CategoryItem;->access$300(Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase$CategoryItem;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TallyDatabase"

    invoke-static {v2, v1}, Lcom/coderpage/base/utils/LogUtils;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 126
    :cond_0
    invoke-interface {p1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->setTransactionSuccessful()V

    .line 127
    invoke-interface {p1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->endTransaction()V

    return-void
.end method
