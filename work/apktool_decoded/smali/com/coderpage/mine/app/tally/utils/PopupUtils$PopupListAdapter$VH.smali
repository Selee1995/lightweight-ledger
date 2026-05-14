.class Lcom/coderpage/mine/app/tally/utils/PopupUtils$PopupListAdapter$VH;
.super Ljava/lang/Object;
.source "PopupUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coderpage/mine/app/tally/utils/PopupUtils$PopupListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VH"
.end annotation


# instance fields
.field private textView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/coderpage/mine/app/tally/utils/PopupUtils$PopupListAdapter;


# direct methods
.method private constructor <init>(Lcom/coderpage/mine/app/tally/utils/PopupUtils$PopupListAdapter;Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            "this$0",
            "textView"
        }
    .end annotation

    .line 130
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/utils/PopupUtils$PopupListAdapter$VH;->this$0:Lcom/coderpage/mine/app/tally/utils/PopupUtils$PopupListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p2, p0, Lcom/coderpage/mine/app/tally/utils/PopupUtils$PopupListAdapter$VH;->textView:Landroid/widget/TextView;

    return-void
.end method

.method synthetic constructor <init>(Lcom/coderpage/mine/app/tally/utils/PopupUtils$PopupListAdapter;Landroid/widget/TextView;Lcom/coderpage/mine/app/tally/utils/PopupUtils$1;)V
    .locals 0

    .line 127
    invoke-direct {p0, p1, p2}, Lcom/coderpage/mine/app/tally/utils/PopupUtils$PopupListAdapter$VH;-><init>(Lcom/coderpage/mine/app/tally/utils/PopupUtils$PopupListAdapter;Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic access$200(Lcom/coderpage/mine/app/tally/utils/PopupUtils$PopupListAdapter$VH;)Landroid/widget/TextView;
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/coderpage/mine/app/tally/utils/PopupUtils$PopupListAdapter$VH;->textView:Landroid/widget/TextView;

    return-object p0
.end method
