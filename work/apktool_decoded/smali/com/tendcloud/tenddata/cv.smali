.class public Lcom/tendcloud/tenddata/cv;
.super Lcom/tendcloud/tenddata/cw;
.source "td"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/tendcloud/tenddata/cw;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/Object;
    .locals 1

    .line 14
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tendcloud/tenddata/x;->c(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method
