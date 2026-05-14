.class public final synthetic Lcom/coderpage/mine/app/tally/module/edit/record/-$$Lambda$RecordViewModel$b0wN2FEpDQakAGSMmZkuOr-b8kE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/coderpage/base/common/SimpleCallback;


# instance fields
.field public final synthetic f$0:Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/record/-$$Lambda$RecordViewModel$b0wN2FEpDQakAGSMmZkuOr-b8kE;->f$0:Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;

    return-void
.end method


# virtual methods
.method public final success(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/record/-$$Lambda$RecordViewModel$b0wN2FEpDQakAGSMmZkuOr-b8kE;->f$0:Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;

    check-cast p1, Lcom/coderpage/mine/app/tally/persistence/model/Record;

    invoke-virtual {v0, p1}, Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;->lambda$setRecordId$2$RecordViewModel(Lcom/coderpage/mine/app/tally/persistence/model/Record;)V

    return-void
.end method
