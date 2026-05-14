.class public final synthetic Lcom/coderpage/mine/-$$Lambda$Apm$4PB9Za3I3a3PYUU6jaAt34Z8vhU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/coderpage/base/common/SimpleCallback;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/-$$Lambda$Apm$4PB9Za3I3a3PYUU6jaAt34Z8vhU;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/coderpage/mine/-$$Lambda$Apm$4PB9Za3I3a3PYUU6jaAt34Z8vhU;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final success(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/coderpage/mine/-$$Lambda$Apm$4PB9Za3I3a3PYUU6jaAt34Z8vhU;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/coderpage/mine/-$$Lambda$Apm$4PB9Za3I3a3PYUU6jaAt34Z8vhU;->f$1:Ljava/lang/String;

    check-cast p1, Ljava/lang/Void;

    invoke-static {v0, v1, p1}, Lcom/coderpage/mine/Apm;->lambda$onPageStart$2(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Void;)V

    return-void
.end method
