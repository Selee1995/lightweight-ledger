.class public abstract Lcom/coderpage/mine/ui/widget/PopupMenu$OffsetInterceptor;
.super Ljava/lang/Object;
.source "PopupMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coderpage/mine/ui/widget/PopupMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OffsetInterceptor"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public offsetX(IIII)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "popWidth",
            "popHeight",
            "anchorWidth",
            "anchorHeight"
        }
    .end annotation

    neg-int p1, p1

    add-int/2addr p1, p3

    add-int/lit8 p1, p1, -0xa

    return p1
.end method

.method public offsetY(IIII)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "popWidth",
            "popHeight",
            "anchorWidth",
            "anchorHeight"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method
