.class public final synthetic Lcom/coderpage/mine/app/tally/module/search/-$$Lambda$SearchViewModel$B_av8T5XBeg7M_XpU2neFL1Ug6s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/coderpage/base/utils/ArrayUtils$Comparator;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/search/-$$Lambda$SearchViewModel$B_av8T5XBeg7M_XpU2neFL1Ug6s;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/search/-$$Lambda$SearchViewModel$B_av8T5XBeg7M_XpU2neFL1Ug6s;->f$0:Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;->lambda$addSearchHistory$5(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
