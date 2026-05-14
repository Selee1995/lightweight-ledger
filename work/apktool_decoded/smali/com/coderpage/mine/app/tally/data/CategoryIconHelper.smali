.class public Lcom/coderpage/mine/app/tally/data/CategoryIconHelper;
.super Ljava/lang/Object;
.source "CategoryIconHelper.java"


# static fields
.field public static final ALL_ICON:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final IC_NAME_CAN_YIN:Ljava/lang/String; = "CanYin"

.field public static final IC_NAME_CARD:Ljava/lang/String; = "Card"

.field public static final IC_NAME_FU_SHI:Ljava/lang/String; = "FuShi"

.field public static final IC_NAME_GOU_WU:Ljava/lang/String; = "GouWu"

.field public static final IC_NAME_JIANG_JIN:Ljava/lang/String; = "JiangJin"

.field public static final IC_NAME_JIAO_TONG:Ljava/lang/String; = "JiaoTong"

.field public static final IC_NAME_JIE_RU:Ljava/lang/String; = "JieRu"

.field public static final IC_NAME_LING_SHI:Ljava/lang/String; = "LingShi"

.field public static final IC_NAME_LI_XIN_SHOU_RU:Ljava/lang/String; = "LixiShouRu"

.field public static final IC_NAME_OTHER:Ljava/lang/String; = "Other"

.field public static final IC_NAME_PARK:Ljava/lang/String; = "Park"

.field public static final IC_NAME_REN_QING:Ljava/lang/String; = "RenQing"

.field public static final IC_NAME_RI_YONG_PIN:Ljava/lang/String; = "RiYongPin"

.field public static final IC_NAME_SETTING:Ljava/lang/String; = "com.coderpage.mine.ic.category_setting"

.field public static final IC_NAME_SHI_CAI:Ljava/lang/String; = "ShiCai"

.field public static final IC_NAME_SHOU_ZHAI:Ljava/lang/String; = "ShouZhai"

.field public static final IC_NAME_SHUI_DIAN_MEI:Ljava/lang/String; = "ShuiDianMei"

.field public static final IC_NAME_TONG_XUN:Ljava/lang/String; = "TongXun"

.field public static final IC_NAME_TOU_ZI_HUI_SHOU:Ljava/lang/String; = "TouZiHuiShou"

.field public static final IC_NAME_TOU_ZI_SHOU_YI:Ljava/lang/String; = "TouZiShouYi"

.field public static final IC_NAME_TRAIN:Ljava/lang/String; = "Train"

.field public static final IC_NAME_TRAVEL:Ljava/lang/String; = "Travel"

.field public static final IC_NAME_TREND:Ljava/lang/String; = "Trend"

.field public static final IC_NAME_WINE:Ljava/lang/String; = "Wine"

.field public static final IC_NAME_XIN_ZI:Ljava/lang/String; = "XinZi"

.field public static final IC_NAME_XUE_XI:Ljava/lang/String; = "XueXi"

.field public static final IC_NAME_YAN_JIU_CHA:Ljava/lang/String; = "YanJiuCha"

.field public static final IC_NAME_YI_LIAO:Ljava/lang/String; = "YiLiao"

.field public static final IC_NAME_YI_WAI_SUO_DE:Ljava/lang/String; = "YiWaiSuoDe"

.field public static final IC_NAME_YU_LE:Ljava/lang/String; = "YuLe"

.field public static final IC_NAME_ZHU_FANG:Ljava/lang/String; = "ZhuFang"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x1e

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Other"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "CanYin"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "JiaoTong"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "GouWu"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "FuShi"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "RiYongPin"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "YuLe"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ShiCai"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "LingShi"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "YanJiuCha"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "XueXi"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "YiLiao"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "ZhuFang"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "ShuiDianMei"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "TongXun"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "RenQing"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "XinZi"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "JiangJin"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "JieRu"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "ShouZhai"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "LixiShouRu"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "TouZiHuiShou"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "YiWaiSuoDe"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "TouZiShouYi"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Card"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Park"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Train"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "Travel"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "Trend"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "Wine"

    aput-object v2, v0, v1

    .line 80
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/coderpage/mine/app/tally/data/CategoryIconHelper;->ALL_ICON:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static resId(Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iconName"
        }
    .end annotation

    const v0, 0x7f0800bf

    if-nez p0, :cond_0

    return v0

    .line 116
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "CanYin"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x1d

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "LingShi"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x1c

    goto/16 :goto_0

    :sswitch_2
    const-string v2, "JiaoTong"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x1b

    goto/16 :goto_0

    :sswitch_3
    const-string v2, "JiangJin"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x1a

    goto/16 :goto_0

    :sswitch_4
    const-string v2, "TouZiShouYi"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0x19

    goto/16 :goto_0

    :sswitch_5
    const-string v2, "ZhuFang"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0x18

    goto/16 :goto_0

    :sswitch_6
    const-string v2, "LixiShouRu"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0x17

    goto/16 :goto_0

    :sswitch_7
    const-string v2, "RiYongPin"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v1, 0x16

    goto/16 :goto_0

    :sswitch_8
    const-string v2, "com.coderpage.mine.ic.category_setting"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v1, 0x15

    goto/16 :goto_0

    :sswitch_9
    const-string v2, "YanJiuCha"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v1, 0x14

    goto/16 :goto_0

    :sswitch_a
    const-string v2, "TouZiHuiShou"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v1, 0x13

    goto/16 :goto_0

    :sswitch_b
    const-string v2, "TongXun"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v1, 0x12

    goto/16 :goto_0

    :sswitch_c
    const-string v2, "XueXi"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v1, 0x11

    goto/16 :goto_0

    :sswitch_d
    const-string v2, "XinZi"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v1, 0x10

    goto/16 :goto_0

    :sswitch_e
    const-string v2, "Trend"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v1, 0xf

    goto/16 :goto_0

    :sswitch_f
    const-string v2, "Train"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v1, 0xe

    goto/16 :goto_0

    :sswitch_10
    const-string v2, "JieRu"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_11
    const-string v2, "GouWu"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_12
    const-string v2, "FuShi"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_13
    const-string v2, "YuLe"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_14
    const-string v2, "Wine"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_15
    const-string v2, "Park"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_16
    const-string v2, "Card"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    goto :goto_0

    :cond_17
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_17
    const-string v2, "ShouZhai"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_18

    goto :goto_0

    :cond_18
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_18
    const-string v2, "YiWaiSuoDe"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_19

    goto :goto_0

    :cond_19
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_19
    const-string v2, "ShuiDianMei"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1a

    goto :goto_0

    :cond_1a
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_1a
    const-string v2, "RenQing"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1b

    goto :goto_0

    :cond_1b
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_1b
    const-string v2, "YiLiao"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1c

    goto :goto_0

    :cond_1c
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1c
    const-string v2, "Travel"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1d

    goto :goto_0

    :cond_1d
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_1d
    const-string v2, "ShiCai"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1e

    goto :goto_0

    :cond_1e
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    return v0

    :pswitch_0
    const p0, 0x7f0800b3

    return p0

    :pswitch_1
    const p0, 0x7f0800c5

    return p0

    :pswitch_2
    const p0, 0x7f0800ce

    return p0

    :pswitch_3
    const p0, 0x7f0800e0

    return p0

    :pswitch_4
    const p0, 0x7f0800d7

    return p0

    :pswitch_5
    const p0, 0x7f0800b9

    return p0

    :pswitch_6
    const p0, 0x7f0800d4

    return p0

    :pswitch_7
    const p0, 0x7f0800a7

    return p0

    :pswitch_8
    const p0, 0x7f08010d

    return p0

    :pswitch_9
    const p0, 0x7f0800cb

    return p0

    :pswitch_a
    const p0, 0x7f0800da

    return p0

    :pswitch_b
    const p0, 0x7f0800a4

    return p0

    :pswitch_c
    const p0, 0x7f0800c8

    return p0

    :pswitch_d
    const p0, 0x7f0800e3

    return p0

    :pswitch_e
    const p0, 0x7f0800f2

    return p0

    :pswitch_f
    const p0, 0x7f0800ec

    return p0

    :pswitch_10
    const p0, 0x7f0800dd

    return p0

    :pswitch_11
    const p0, 0x7f0800c2

    return p0

    :pswitch_12
    const p0, 0x7f0800a1

    return p0

    :pswitch_13
    const p0, 0x7f0800ad

    return p0

    :pswitch_14
    const p0, 0x7f0800f5

    return p0

    :pswitch_15
    const p0, 0x7f0800e9

    return p0

    :pswitch_16
    const p0, 0x7f08009e

    return p0

    :pswitch_17
    const p0, 0x7f0800d1

    return p0

    :pswitch_18
    const p0, 0x7f0800e6

    return p0

    :pswitch_19
    const p0, 0x7f0800aa

    return p0

    :pswitch_1a
    const p0, 0x7f0800b0

    return p0

    :pswitch_1b
    const p0, 0x7f0800bc

    return p0

    :pswitch_1c
    const p0, 0x7f0800ef

    return p0

    :pswitch_1d
    const p0, 0x7f0800b4

    return p0

    :sswitch_data_0
    .sparse-switch
        -0x6c737569 -> :sswitch_1d
        -0x6a3494c6 -> :sswitch_1c
        -0x6234ea45 -> :sswitch_1b
        -0x5bb30b14 -> :sswitch_1a
        -0x5783470a -> :sswitch_19
        -0x31ae20a1 -> :sswitch_18
        -0x10713a6f -> :sswitch_17
        0x1fef30 -> :sswitch_16
        0x25d80a -> :sswitch_15
        0x292429 -> :sswitch_14
        0x2a35d5 -> :sswitch_13
        0x410e145 -> :sswitch_12
        0x41cbc2b -> :sswitch_11
        0x4440bc9 -> :sswitch_10
        0x4d501e8 -> :sswitch_f
        0x4d5117d -> :sswitch_e
        0x509778c -> :sswitch_d
        0x50ec9f9 -> :sswitch_c
        0x1f33a2dd -> :sswitch_b
        0x24c583ce -> :sswitch_a
        0x274e878c -> :sswitch_9
        0x3240e04f -> :sswitch_8
        0x40f9a16f -> :sswitch_7
        0x4d6a718c -> :sswitch_6
        0x50fadf3b -> :sswitch_5
        0x555182d4 -> :sswitch_4
        0x654968f4 -> :sswitch_3
        0x654f68e1 -> :sswitch_2
        0x6dc4a0be -> :sswitch_1
        0x77def58e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
