.class public Lcom/coderpage/mine/app/tally/ui/widget/LoadMoreRecyclerView;
.super Landroid/support/v7/widget/RecyclerView;
.source "LoadMoreRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coderpage/mine/app/tally/ui/widget/LoadMoreRecyclerView$PullActionListener;,
        Lcom/coderpage/mine/app/tally/ui/widget/LoadMoreRecyclerView$LoadMoreController;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mPullActionListener:Lcom/coderpage/mine/app/tally/ui/widget/LoadMoreRecyclerView$PullActionListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-class v0, Lcom/coderpage/mine/app/tally/ui/widget/LoadMoreRecyclerView;

    invoke-static {v0}, Lcom/coderpage/base/utils/LogUtils;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coderpage/mine/app/tally/ui/widget/LoadMoreRecyclerView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, v0}, Lcom/coderpage/mine/app/tally/ui/widget/LoadMoreRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, p2, v0}, Lcom/coderpage/mine/app/tally/ui/widget/LoadMoreRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyle"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    new-instance p1, Lcom/coderpage/mine/app/tally/ui/widget/LoadMoreRecyclerView$LoadMoreController;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/coderpage/mine/app/tally/ui/widget/LoadMoreRecyclerView$LoadMoreController;-><init>(Lcom/coderpage/mine/app/tally/ui/widget/LoadMoreRecyclerView;Lcom/coderpage/mine/app/tally/ui/widget/LoadMoreRecyclerView$1;)V

    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/ui/widget/LoadMoreRecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method static synthetic access$100(Lcom/coderpage/mine/app/tally/ui/widget/LoadMoreRecyclerView;)Lcom/coderpage/mine/app/tally/ui/widget/LoadMoreRecyclerView$PullActionListener;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/coderpage/mine/app/tally/ui/widget/LoadMoreRecyclerView;->mPullActionListener:Lcom/coderpage/mine/app/tally/ui/widget/LoadMoreRecyclerView$PullActionListener;

    return-object p0
.end method


# virtual methods
.method public setPullActionListener(Lcom/coderpage/mine/app/tally/ui/widget/LoadMoreRecyclerView$PullActionListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/ui/widget/LoadMoreRecyclerView;->mPullActionListener:Lcom/coderpage/mine/app/tally/ui/widget/LoadMoreRecyclerView$PullActionListener;

    return-void
.end method
