.class public final synthetic Lcom/coderpage/lib/permission/-$$Lambda$PermissionReq$IFU9sG7brvZrW3Jibz0bMckYj-Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/coderpage/lib/permission/PermissionUtils$OnExplainListener;


# instance fields
.field public final synthetic f$0:Landroid/graphics/drawable/Drawable;

.field public final synthetic f$1:Ljava/lang/CharSequence;

.field public final synthetic f$2:Ljava/lang/CharSequence;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coderpage/lib/permission/-$$Lambda$PermissionReq$IFU9sG7brvZrW3Jibz0bMckYj-Q;->f$0:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/coderpage/lib/permission/-$$Lambda$PermissionReq$IFU9sG7brvZrW3Jibz0bMckYj-Q;->f$1:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/coderpage/lib/permission/-$$Lambda$PermissionReq$IFU9sG7brvZrW3Jibz0bMckYj-Q;->f$2:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final explain(Lcom/coderpage/ui/activity/TransActivity;Ljava/util/List;Lcom/coderpage/lib/permission/PermissionUtils$OnExplainListener$ShouldRequest;)V
    .locals 6

    iget-object v0, p0, Lcom/coderpage/lib/permission/-$$Lambda$PermissionReq$IFU9sG7brvZrW3Jibz0bMckYj-Q;->f$0:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/coderpage/lib/permission/-$$Lambda$PermissionReq$IFU9sG7brvZrW3Jibz0bMckYj-Q;->f$1:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/coderpage/lib/permission/-$$Lambda$PermissionReq$IFU9sG7brvZrW3Jibz0bMckYj-Q;->f$2:Ljava/lang/CharSequence;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/coderpage/lib/permission/PermissionReq;->lambda$request$0(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/coderpage/ui/activity/TransActivity;Ljava/util/List;Lcom/coderpage/lib/permission/PermissionUtils$OnExplainListener$ShouldRequest;)V

    return-void
.end method
