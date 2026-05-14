.class Lcom/tendcloud/tenddata/z$a;
.super Ljava/lang/Object;
.source "td"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final event:Ljava/lang/Object;

.field final handler:Lcom/tendcloud/tenddata/ae;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/tendcloud/tenddata/ae;)V
    .locals 0

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    iput-object p1, p0, Lcom/tendcloud/tenddata/z$a;->event:Ljava/lang/Object;

    .line 319
    iput-object p2, p0, Lcom/tendcloud/tenddata/z$a;->handler:Lcom/tendcloud/tenddata/ae;

    return-void
.end method
