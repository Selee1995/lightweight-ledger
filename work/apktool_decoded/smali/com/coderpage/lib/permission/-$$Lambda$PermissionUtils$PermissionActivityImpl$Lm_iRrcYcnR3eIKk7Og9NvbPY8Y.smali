.class public final synthetic Lcom/coderpage/lib/permission/-$$Lambda$PermissionUtils$PermissionActivityImpl$Lm_iRrcYcnR3eIKk7Og9NvbPY8Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/coderpage/ui/activity/TransActivity$Consumer;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/coderpage/lib/permission/-$$Lambda$PermissionUtils$PermissionActivityImpl$Lm_iRrcYcnR3eIKk7Og9NvbPY8Y;->f$0:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/coderpage/lib/permission/-$$Lambda$PermissionUtils$PermissionActivityImpl$Lm_iRrcYcnR3eIKk7Og9NvbPY8Y;->f$0:I

    check-cast p1, Landroid/content/Intent;

    invoke-static {v0, p1}, Lcom/coderpage/lib/permission/PermissionUtils$PermissionActivityImpl;->lambda$start$0(ILandroid/content/Intent;)V

    return-void
.end method
