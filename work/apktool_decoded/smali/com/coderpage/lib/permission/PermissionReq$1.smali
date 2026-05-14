.class Lcom/coderpage/lib/permission/PermissionReq$1;
.super Ljava/lang/Object;
.source "PermissionReq.java"

# interfaces
.implements Lcom/coderpage/lib/permission/PermissionUtils$FullCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coderpage/lib/permission/PermissionReq;->request(Landroid/content/Context;[Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/coderpage/lib/permission/PermissionReq$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$listener:Lcom/coderpage/lib/permission/PermissionReq$Listener;

.field final synthetic val$permission:[Ljava/lang/String;

.field final synthetic val$tipRefusedDesc:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>([Ljava/lang/String;Lcom/coderpage/lib/permission/PermissionReq$Listener;Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$permission",
            "val$listener",
            "val$context",
            "val$tipRefusedDesc"
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lcom/coderpage/lib/permission/PermissionReq$1;->val$permission:[Ljava/lang/String;

    iput-object p2, p0, Lcom/coderpage/lib/permission/PermissionReq$1;->val$listener:Lcom/coderpage/lib/permission/PermissionReq$Listener;

    iput-object p3, p0, Lcom/coderpage/lib/permission/PermissionReq$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/coderpage/lib/permission/PermissionReq$1;->val$tipRefusedDesc:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDenied(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "deniedForever",
            "denied"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 54
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/coderpage/lib/permission/PermissionReq$1;->val$context:Landroid/content/Context;

    new-instance v2, Lcom/coderpage/lib/permission/PermissionReq$DeniedForeverTip;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/coderpage/lib/permission/PermissionReq$1;->val$tipRefusedDesc:Ljava/lang/CharSequence;

    invoke-direct {v2, v3, v4}, Lcom/coderpage/lib/permission/PermissionReq$DeniedForeverTip;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-static {v0, v2}, Lcom/coderpage/ui/activity/TransActivity;->start(Landroid/content/Context;Lcom/coderpage/ui/activity/TransActivity$Delegate;)V

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/coderpage/lib/permission/PermissionReq$1;->val$listener:Lcom/coderpage/lib/permission/PermissionReq$Listener;

    invoke-interface {v0, v1, p1, p2}, Lcom/coderpage/lib/permission/PermissionReq$Listener;->onResult(ZLjava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public onGranted(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "granted"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 47
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object v0, p0, Lcom/coderpage/lib/permission/PermissionReq$1;->val$permission:[Ljava/lang/String;

    array-length v0, v0

    if-ne p1, v0, :cond_0

    .line 48
    iget-object p1, p0, Lcom/coderpage/lib/permission/PermissionReq$1;->val$listener:Lcom/coderpage/lib/permission/PermissionReq$Listener;

    const/4 v0, 0x1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/coderpage/lib/permission/PermissionReq$Listener;->onResult(ZLjava/util/List;Ljava/util/List;)V

    :cond_0
    return-void
.end method
