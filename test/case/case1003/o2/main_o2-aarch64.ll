; ModuleID = '/home/caoy/proj/case/case1003/main.c'
source_filename = "/home/caoy/proj/case/case1003/main.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: nofree noinline nounwind
define dso_local void @f_printf(i32 %p0) local_unnamed_addr #0 {
entry:
  %call = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %p0)
  ret void
}

; Function Attrs: nofree nounwind
declare dso_local i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind
define dso_local i32 @f_scanf_nop() local_unnamed_addr #2 {
entry:
  %var0 = alloca i32, align 4
  %0 = bitcast i32* %var0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #5
  %call = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* nonnull %var0) #5
  %1 = load i32, i32* %var0, align 4, !tbaa !2
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #5
  ret i32 %1
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

declare dso_local i32 @__isoc99_scanf(i8*, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: noinline nounwind
define dso_local i32 @f_rand() local_unnamed_addr #2 {
entry:
  %call = tail call i32 bitcast (i32 (...)* @rand to i32 ()*)() #5
  ret i32 %call
}

declare dso_local i32 @rand(...) local_unnamed_addr #4

; Function Attrs: noinline nounwind
define dso_local i32 @func0() local_unnamed_addr #2 {
entry:
  %call = tail call i32 @f_rand()
  %call1 = tail call i32 @f_scanf_nop()
  %call2 = tail call i32 @f_scanf_nop()
  %call3 = tail call i32 @f_rand()
  %call4 = tail call i32 @f_rand()
  %mul = mul nsw i32 %call, -397
  %add = add nsw i32 %call2, %call
  tail call void @f_printf(i32 %add)
  %mul5 = mul nsw i32 %add, %call
  %sub = sub nsw i32 %call, %mul5
  tail call void @f_printf(i32 %sub)
  %sub6 = mul i32 %call, 794
  %mul8 = mul i32 %sub6, %call2
  tail call void @f_printf(i32 %mul8)
  %add9 = add nsw i32 %add, %call2
  %mul10 = mul i32 %mul, %call
  %mul11 = mul i32 %mul10, %add9
  ret i32 %mul11
}

; Function Attrs: noinline nounwind
define dso_local i32 @func1() local_unnamed_addr #2 {
entry:
  %call = tail call i32 @f_rand()
  %call1 = tail call i32 @f_scanf_nop()
  %call2 = tail call i32 @f_rand()
  %call3 = tail call i32 @f_scanf_nop()
  %call4 = tail call i32 @f_scanf_nop()
  %sub = sub nsw i32 %call, %call4
  tail call void @f_printf(i32 %sub)
  %add = add i32 %call, 868
  %add5 = add i32 %add, %call2
  tail call void @f_printf(i32 %add5)
  %sub6 = sub nsw i32 %call2, %call
  tail call void @f_printf(i32 %sub6)
  %sub7 = sub nsw i32 %add5, %sub6
  %mul = mul nsw i32 %sub7, %add5
  %sub8 = sub nsw i32 %mul, %call1
  %mul9 = mul nsw i32 %sub8, %call
  %sub10 = sub nsw i32 %mul9, %sub7
  ret i32 %sub10
}

; Function Attrs: noinline nounwind
define dso_local i32 @func2(i32 %p0) local_unnamed_addr #2 {
entry:
  %call = tail call i32 @f_rand()
  %call1 = tail call i32 @f_rand()
  %call2 = tail call i32 @f_rand()
  %call3 = tail call i32 @f_scanf_nop()
  %call4 = tail call i32 @f_rand()
  %sub = sub i32 253, %p0
  %sub5 = sub i32 %sub, %call1
  %sub6 = sub i32 %sub5, %call4
  %sub7 = sub nsw i32 543, %call
  %0 = mul i32 %sub6, 253
  %mul = add i32 %0, 137379
  %mul8 = mul nsw i32 %sub7, 253
  %mul9 = mul nsw i32 %mul8, %call4
  %sub10 = sub nsw i32 %mul9, %mul
  tail call void @f_printf(i32 %sub10)
  %sub12 = sub nsw i32 %mul, %sub7
  ret i32 %sub12
}

; Function Attrs: noinline nounwind
define dso_local i32 @func3(i32 %p0, i32 %p1) local_unnamed_addr #2 {
entry:
  %call = tail call i32 @f_scanf_nop()
  %call1 = tail call i32 @f_rand()
  %call2 = tail call i32 @f_rand()
  %call3 = tail call i32 @f_rand()
  %call4 = tail call i32 @f_scanf_nop()
  %sub = sub nsw i32 %call1, %call
  %sub7 = sub i32 -1344, %sub
  %mul = mul i32 %sub, %call1
  %mul8 = mul i32 %mul, %sub7
  %sub9 = add nsw i32 %mul8, 672
  %mul12 = mul nsw i32 %sub9, %call
  tail call void @f_printf(i32 %mul12)
  %add13 = add nsw i32 %call, -672
  tail call void @f_printf(i32 %add13)
  %mul14 = mul nsw i32 %mul12, %sub
  %add15 = add nsw i32 %mul14, %add13
  ret i32 %add15
}

; Function Attrs: noinline nounwind
define dso_local i32 @func4(i32 %p0, i32 %p1, i32 %p2) local_unnamed_addr #2 {
entry:
  %call = tail call i32 @f_scanf_nop()
  %call1 = tail call i32 @f_scanf_nop()
  %call2 = tail call i32 @f_scanf_nop()
  %call3 = tail call i32 @f_rand()
  %call4 = tail call i32 @f_rand()
  %sub = sub nsw i32 %call1, %call3
  %mul = mul nsw i32 %sub, %p0
  %add = add i32 %call3, %p1
  %add5 = add i32 %add, %mul
  %mul6 = mul nsw i32 %add5, %p2
  %sub7 = sub nsw i32 %mul6, %call4
  tail call void @f_printf(i32 %sub7)
  %sub8 = sub nsw i32 -587, %call2
  %mul9 = mul nsw i32 %sub8, %p2
  %sub10 = sub nsw i32 %mul9, %p1
  tail call void @f_printf(i32 %sub10)
  %add14 = add i32 %call2, -602
  %add15 = add i32 %add14, %sub7
  %mul16 = mul nsw i32 %add15, -587
  tail call void @f_printf(i32 %mul16)
  %sub19 = sub nsw i32 -587, %sub7
  ret i32 %sub19
}

; Function Attrs: noinline nounwind
define dso_local i32 @main() local_unnamed_addr #2 {
entry:
  %call = tail call i32 @f_rand()
  %call1 = tail call i32 @f_rand()
  %call2 = tail call i32 @f_rand()
  %call3 = tail call i32 @f_rand()
  %call4 = tail call i32 @func0()
  %call5 = tail call i32 @func1()
  %call6 = tail call i32 @func2(i32 %call)
  %call7 = tail call i32 @func3(i32 undef, i32 undef)
  %call8 = tail call i32 @func4(i32 %call, i32 %call1, i32 %call2)
  ret i32 0
}

attributes #0 = { nofree noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0 "}
!2 = !{!3, !3, i64 0}
!3 = !{!"int", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
