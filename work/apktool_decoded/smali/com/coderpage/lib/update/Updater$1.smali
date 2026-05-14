.class Lcom/coderpage/lib/update/Updater$1;
.super Lcom/coderpage/lib/update/Updater$NewVersionCheckCallBack;
.source "Updater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coderpage/lib/update/Updater;->checkNewVersion(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coderpage/lib/update/Updater;


# direct methods
.method constructor <init>(Lcom/coderpage/lib/update/Updater;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 43
    iput-object p1, p0, Lcom/coderpage/lib/update/Updater$1;->this$0:Lcom/coderpage/lib/update/Updater;

    invoke-direct {p0}, Lcom/coderpage/lib/update/Updater$NewVersionCheckCallBack;-><init>()V

    return-void
.end method
