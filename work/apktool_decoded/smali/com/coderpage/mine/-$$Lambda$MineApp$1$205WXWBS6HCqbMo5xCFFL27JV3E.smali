.class public final synthetic Lcom/coderpage/mine/-$$Lambda$MineApp$1$205WXWBS6HCqbMo5xCFFL27JV3E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/coderpage/base/utils/ArrayUtils$Comparator;


# instance fields
.field public final synthetic f$0:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/-$$Lambda$MineApp$1$205WXWBS6HCqbMo5xCFFL27JV3E;->f$0:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/coderpage/mine/-$$Lambda$MineApp$1$205WXWBS6HCqbMo5xCFFL27JV3E;->f$0:Landroid/app/Activity;

    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-static {v0, p1}, Lcom/coderpage/mine/MineApp$1;->lambda$onActivityDestroyed$0(Landroid/app/Activity;Ljava/lang/ref/WeakReference;)Z

    move-result p1

    return p1
.end method
