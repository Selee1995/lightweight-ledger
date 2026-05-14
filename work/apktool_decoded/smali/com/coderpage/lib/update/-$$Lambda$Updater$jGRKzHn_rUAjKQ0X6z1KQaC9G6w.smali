.class public final synthetic Lcom/coderpage/lib/update/-$$Lambda$Updater$jGRKzHn_rUAjKQ0X6z1KQaC9G6w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Lcom/coderpage/lib/update/ApkModel;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/coderpage/lib/update/ApkModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coderpage/lib/update/-$$Lambda$Updater$jGRKzHn_rUAjKQ0X6z1KQaC9G6w;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/coderpage/lib/update/-$$Lambda$Updater$jGRKzHn_rUAjKQ0X6z1KQaC9G6w;->f$1:Lcom/coderpage/lib/update/ApkModel;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v0, p0, Lcom/coderpage/lib/update/-$$Lambda$Updater$jGRKzHn_rUAjKQ0X6z1KQaC9G6w;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/coderpage/lib/update/-$$Lambda$Updater$jGRKzHn_rUAjKQ0X6z1KQaC9G6w;->f$1:Lcom/coderpage/lib/update/ApkModel;

    invoke-static {v0, v1, p1, p2}, Lcom/coderpage/lib/update/Updater;->lambda$showApkDownloadConfirmDialog$2(Landroid/content/Context;Lcom/coderpage/lib/update/ApkModel;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
