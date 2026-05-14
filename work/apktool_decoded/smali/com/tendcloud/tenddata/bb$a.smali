.class Lcom/tendcloud/tenddata/bb$a;
.super Ljava/lang/Object;
.source "td"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/bb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field public fp1:Lcom/tendcloud/tenddata/ba;

.field public fp2:Lcom/tendcloud/tenddata/ba;

.field public score:D

.field final synthetic this$0:Lcom/tendcloud/tenddata/bb;


# direct methods
.method public constructor <init>(Lcom/tendcloud/tenddata/bb;Lcom/tendcloud/tenddata/ba;Lcom/tendcloud/tenddata/ba;D)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/tendcloud/tenddata/bb$a;->this$0:Lcom/tendcloud/tenddata/bb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p2, p0, Lcom/tendcloud/tenddata/bb$a;->fp1:Lcom/tendcloud/tenddata/ba;

    .line 29
    iput-object p3, p0, Lcom/tendcloud/tenddata/bb$a;->fp2:Lcom/tendcloud/tenddata/ba;

    .line 30
    iput-wide p4, p0, Lcom/tendcloud/tenddata/bb$a;->score:D

    return-void
.end method
