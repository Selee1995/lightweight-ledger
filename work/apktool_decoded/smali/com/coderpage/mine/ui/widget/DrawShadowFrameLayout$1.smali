.class Lcom/coderpage/mine/ui/widget/DrawShadowFrameLayout$1;
.super Landroid/util/Property;
.source "DrawShadowFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coderpage/mine/ui/widget/DrawShadowFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Lcom/coderpage/mine/ui/widget/DrawShadowFrameLayout;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "name"
        }
    .end annotation

    .line 122
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/coderpage/mine/ui/widget/DrawShadowFrameLayout;)Ljava/lang/Float;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dsfl"
        }
    .end annotation

    .line 125
    invoke-static {p1}, Lcom/coderpage/mine/ui/widget/DrawShadowFrameLayout;->access$000(Lcom/coderpage/mine/ui/widget/DrawShadowFrameLayout;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "dsfl"
        }
    .end annotation

    .line 122
    check-cast p1, Lcom/coderpage/mine/ui/widget/DrawShadowFrameLayout;

    invoke-virtual {p0, p1}, Lcom/coderpage/mine/ui/widget/DrawShadowFrameLayout$1;->get(Lcom/coderpage/mine/ui/widget/DrawShadowFrameLayout;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public set(Lcom/coderpage/mine/ui/widget/DrawShadowFrameLayout;Ljava/lang/Float;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dsfl",
            "value"
        }
    .end annotation

    .line 130
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-static {p1, p2}, Lcom/coderpage/mine/ui/widget/DrawShadowFrameLayout;->access$002(Lcom/coderpage/mine/ui/widget/DrawShadowFrameLayout;F)F

    .line 131
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "dsfl",
            "value"
        }
    .end annotation

    .line 122
    check-cast p1, Lcom/coderpage/mine/ui/widget/DrawShadowFrameLayout;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lcom/coderpage/mine/ui/widget/DrawShadowFrameLayout$1;->set(Lcom/coderpage/mine/ui/widget/DrawShadowFrameLayout;Ljava/lang/Float;)V

    return-void
.end method
