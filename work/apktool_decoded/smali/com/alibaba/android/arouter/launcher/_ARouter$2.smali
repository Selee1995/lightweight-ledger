.class Lcom/alibaba/android/arouter/launcher/_ARouter$2;
.super Ljava/lang/Object;
.source "_ARouter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/arouter/launcher/_ARouter;->_navigation(Landroid/content/Context;Lcom/alibaba/android/arouter/facade/Postcard;ILcom/alibaba/android/arouter/facade/callback/NavigationCallback;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/arouter/launcher/_ARouter;

.field final synthetic val$callback:Lcom/alibaba/android/arouter/facade/callback/NavigationCallback;

.field final synthetic val$currentContext:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$postcard:Lcom/alibaba/android/arouter/facade/Postcard;

.field final synthetic val$requestCode:I


# direct methods
.method constructor <init>(Lcom/alibaba/android/arouter/launcher/_ARouter;ILandroid/content/Context;Landroid/content/Intent;Lcom/alibaba/android/arouter/facade/Postcard;Lcom/alibaba/android/arouter/facade/callback/NavigationCallback;)V
    .locals 0

    .line 353
    iput-object p1, p0, Lcom/alibaba/android/arouter/launcher/_ARouter$2;->this$0:Lcom/alibaba/android/arouter/launcher/_ARouter;

    iput p2, p0, Lcom/alibaba/android/arouter/launcher/_ARouter$2;->val$requestCode:I

    iput-object p3, p0, Lcom/alibaba/android/arouter/launcher/_ARouter$2;->val$currentContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/alibaba/android/arouter/launcher/_ARouter$2;->val$intent:Landroid/content/Intent;

    iput-object p5, p0, Lcom/alibaba/android/arouter/launcher/_ARouter$2;->val$postcard:Lcom/alibaba/android/arouter/facade/Postcard;

    iput-object p6, p0, Lcom/alibaba/android/arouter/launcher/_ARouter$2;->val$callback:Lcom/alibaba/android/arouter/facade/callback/NavigationCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 356
    iget v0, p0, Lcom/alibaba/android/arouter/launcher/_ARouter$2;->val$requestCode:I

    if-lez v0, :cond_0

    .line 357
    iget-object v1, p0, Lcom/alibaba/android/arouter/launcher/_ARouter$2;->val$currentContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/alibaba/android/arouter/launcher/_ARouter$2;->val$intent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/alibaba/android/arouter/launcher/_ARouter$2;->val$postcard:Lcom/alibaba/android/arouter/facade/Postcard;

    invoke-virtual {v3}, Lcom/alibaba/android/arouter/facade/Postcard;->getOptionsBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v1, v2, v0, v3}, Landroid/support/v4/app/ActivityCompat;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/arouter/launcher/_ARouter$2;->val$currentContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/alibaba/android/arouter/launcher/_ARouter$2;->val$intent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/alibaba/android/arouter/launcher/_ARouter$2;->val$postcard:Lcom/alibaba/android/arouter/facade/Postcard;

    invoke-virtual {v2}, Lcom/alibaba/android/arouter/facade/Postcard;->getOptionsBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/support/v4/app/ActivityCompat;->startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 362
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/arouter/launcher/_ARouter$2;->val$postcard:Lcom/alibaba/android/arouter/facade/Postcard;

    invoke-virtual {v0}, Lcom/alibaba/android/arouter/facade/Postcard;->getEnterAnim()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/arouter/launcher/_ARouter$2;->val$postcard:Lcom/alibaba/android/arouter/facade/Postcard;

    invoke-virtual {v0}, Lcom/alibaba/android/arouter/facade/Postcard;->getExitAnim()I

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/arouter/launcher/_ARouter$2;->val$currentContext:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_2

    .line 363
    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/alibaba/android/arouter/launcher/_ARouter$2;->val$postcard:Lcom/alibaba/android/arouter/facade/Postcard;

    invoke-virtual {v1}, Lcom/alibaba/android/arouter/facade/Postcard;->getEnterAnim()I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/android/arouter/launcher/_ARouter$2;->val$postcard:Lcom/alibaba/android/arouter/facade/Postcard;

    invoke-virtual {v2}, Lcom/alibaba/android/arouter/facade/Postcard;->getExitAnim()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 366
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/arouter/launcher/_ARouter$2;->val$callback:Lcom/alibaba/android/arouter/facade/callback/NavigationCallback;

    if-eqz v0, :cond_3

    .line 367
    iget-object v1, p0, Lcom/alibaba/android/arouter/launcher/_ARouter$2;->val$postcard:Lcom/alibaba/android/arouter/facade/Postcard;

    invoke-interface {v0, v1}, Lcom/alibaba/android/arouter/facade/callback/NavigationCallback;->onArrival(Lcom/alibaba/android/arouter/facade/Postcard;)V

    :cond_3
    return-void
.end method
