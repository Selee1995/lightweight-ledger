.class public Lcom/tendcloud/tenddata/bx;
.super Ljava/lang/Object;
.source "td"


# instance fields
.field public a:Lcom/tendcloud/tenddata/a;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public e:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            ">;"
        }
    .end annotation
.end field

.field public f:Lcom/tendcloud/tenddata/cq;

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/tendcloud/tenddata/bx;->a:Lcom/tendcloud/tenddata/a;

    .line 20
    iput-object v0, p0, Lcom/tendcloud/tenddata/bx;->b:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/tendcloud/tenddata/bx;->c:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/tendcloud/tenddata/bx;->d:Ljava/util/Map;

    .line 23
    iput-object v0, p0, Lcom/tendcloud/tenddata/bx;->e:Landroid/util/Pair;

    .line 24
    iput-object v0, p0, Lcom/tendcloud/tenddata/bx;->f:Lcom/tendcloud/tenddata/cq;

    .line 25
    iput-object v0, p0, Lcom/tendcloud/tenddata/bx;->g:Ljava/lang/String;

    return-void
.end method
