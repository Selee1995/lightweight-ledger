.class Lcom/coderpage/mine/ui/widget/PopupMenu$DefaultOffsetInterceptor;
.super Lcom/coderpage/mine/ui/widget/PopupMenu$OffsetInterceptor;
.source "PopupMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coderpage/mine/ui/widget/PopupMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultOffsetInterceptor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coderpage/mine/ui/widget/PopupMenu;


# direct methods
.method private constructor <init>(Lcom/coderpage/mine/ui/widget/PopupMenu;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 115
    iput-object p1, p0, Lcom/coderpage/mine/ui/widget/PopupMenu$DefaultOffsetInterceptor;->this$0:Lcom/coderpage/mine/ui/widget/PopupMenu;

    invoke-direct {p0}, Lcom/coderpage/mine/ui/widget/PopupMenu$OffsetInterceptor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coderpage/mine/ui/widget/PopupMenu;Lcom/coderpage/mine/ui/widget/PopupMenu$1;)V
    .locals 0

    .line 115
    invoke-direct {p0, p1}, Lcom/coderpage/mine/ui/widget/PopupMenu$DefaultOffsetInterceptor;-><init>(Lcom/coderpage/mine/ui/widget/PopupMenu;)V

    return-void
.end method
