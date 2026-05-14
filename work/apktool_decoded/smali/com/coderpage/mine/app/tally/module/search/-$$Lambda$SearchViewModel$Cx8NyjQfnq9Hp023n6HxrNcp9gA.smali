.class public final synthetic Lcom/coderpage/mine/app/tally/module/search/-$$Lambda$SearchViewModel$Cx8NyjQfnq9Hp023n6HxrNcp9gA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/coderpage/base/common/SimpleCallback;


# instance fields
.field public final synthetic f$0:Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/search/-$$Lambda$SearchViewModel$Cx8NyjQfnq9Hp023n6HxrNcp9gA;->f$0:Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;

    iput-object p2, p0, Lcom/coderpage/mine/app/tally/module/search/-$$Lambda$SearchViewModel$Cx8NyjQfnq9Hp023n6HxrNcp9gA;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final success(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/search/-$$Lambda$SearchViewModel$Cx8NyjQfnq9Hp023n6HxrNcp9gA;->f$0:Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/search/-$$Lambda$SearchViewModel$Cx8NyjQfnq9Hp023n6HxrNcp9gA;->f$1:Ljava/lang/String;

    check-cast p1, Lcom/coderpage/base/common/Result;

    invoke-virtual {v0, v1, p1}, Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;->lambda$search$3$SearchViewModel(Ljava/lang/String;Lcom/coderpage/base/common/Result;)V

    return-void
.end method
