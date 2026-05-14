.class public final Lcom/tendcloud/tenddata/al;
.super Ljava/lang/Object;
.source "td"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/tendcloud/tenddata/am$a;
    .locals 1

    .line 25
    new-instance v0, Lcom/tendcloud/tenddata/am$a;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/am$a;-><init>()V

    return-object v0
.end method

.method public static a(Lcom/tendcloud/tenddata/am;)Lcom/tendcloud/tenddata/ar;
    .locals 1

    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, v0}, Lcom/tendcloud/tenddata/am;->a(Z)Lcom/tendcloud/tenddata/ar;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/tendcloud/tenddata/am;Lcom/tendcloud/tenddata/a;)Lcom/tendcloud/tenddata/ar;
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Lcom/tendcloud/tenddata/am;->a(Lcom/tendcloud/tenddata/a;)Lcom/tendcloud/tenddata/ar;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lcom/tendcloud/tenddata/am;)Lcom/tendcloud/tenddata/ar;
    .locals 0

    .line 20
    invoke-virtual {p0}, Lcom/tendcloud/tenddata/am;->b()Lcom/tendcloud/tenddata/ar;

    move-result-object p0

    return-object p0
.end method
